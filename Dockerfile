FROM python:3.7.3

ARG DJ_KEY

ENV DJANGO_SETTINGS_MODULE=cph.settings
ENV PYTHONPATH=.

WORKDIR /app

# Create the virtual environment, and put it on the PATH for all subsequent commands
ENV VIRTUAL_ENV=/app/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./cph /app/cph

WORKDIR /app/cph

# Add the Django secret key. We don't want to store it in GitHub
RUN echo "SECRET_KEY = '$DJ_KEY'" >> cph/settings.py

CMD [ "django-admin.py", "runserver", "0.0.0.0:8000" ]
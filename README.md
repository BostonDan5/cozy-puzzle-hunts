# cozy-puzzle-hunts
Another edit
And one from VScode

# Development Notes
## GitHub
* https://github.com/BostonDan5/cozy-puzzle-hunts
* The repository is Public. The creation of the Docker image (via Dockerfile) creates the
    Django SECRET_KEY in settings.py. My expectation is that I will create Docker images locally
    and upload to AWS.

# Running locally
## Django
* source venv/bin/activate
* export SECRET_KEY='legal key' (e.g. as in django_secret_key.txt)
    * In cph, do this: source ../django_prep.sh
* Run the server: python manage.py runserver
* Dump all the data tables: django-admin dumpdata --settings cph.settings --pythonpath .

## Docker
* To invoke a bash shell on an image, get the 12-char hex code from the build command and run:
** docker run -it --rm -p 8000:8000 <hex code> bash
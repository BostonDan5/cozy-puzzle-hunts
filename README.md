# cozy-puzzle-hunts
Another edit
And one from VScode

# Development Notes
## GitHub
* https://github.com/BostonDan5/cozy-puzzle-hunts
* The repository is Public. The creation of the Docker image (via Dockerfile) creates the
    Django SECRET_KEY in settings.py. My expectation is that I will create Docker images locally
    to AWS.

# Running locally
## Django
* source venv/bin/activate
* python manage.py runserver
## Docker
* To invoke a bash shell on an image, get the 12-char hex code from the build command and run:
** docker run -it --rm -p 8000:8000 <hex code> bash
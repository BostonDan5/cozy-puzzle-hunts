# cozy-puzzle-hunts
Another edit
And one from VScode

# Development Notes
## GitHub
* https://github.com/BostonDan5/cozy-puzzle-hunts
* The repository is currently set to Private. In order to make it publicly visible, I need to address the SECRET_KEY in settings.py. The key for the development deployment should ideally be specified manually (?) during the creation of the Docker container so it does not need to live in GitHub.

# Running locally
## Django
* source venv/bin/activate
* python manage.py runserver
## Docker
* To invoke a bash shell on an image, get the 12-char hex code from the build command and run:
** docker run -it --rm -p 8000:8000 <hex code> bash
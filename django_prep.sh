#!/bin/bash
# Prep for running a Django command (e.g. via django-admin) locally
# Assumptions:
#   This is run from the cph subdir
#   To make the export work, run as: source ../django_prep.sh
export SECRET_KEY=$(cat ../../django_secret_key.txt)
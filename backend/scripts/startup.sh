#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT pb_ncs_walkthrough2_50327.wsgi:application

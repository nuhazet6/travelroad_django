#!/bin/bash

ssh nuhazet@nuhazet.arkania.es "
  cd travelroad_django
  git pull
  source .venv/bin/activate
  pip install -r requirements.txt
  supervisorctl restart travelroad
  # python manage.py migrate
  # python manage.py collectstatic --no-input

"  

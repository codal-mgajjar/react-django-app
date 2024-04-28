#!/bin/bash

echo "Migration models"
python3 manage.py migrate --no-input

echo "Collecting static files"
python3 manage.py collectstatic --no-input


echo "Starting server"
gunicorn backend.wsgi:application --bind 0.0.0.0:8000


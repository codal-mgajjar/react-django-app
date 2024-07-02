FROM python:3.12-alpine AS builder

WORKDIR /app

RUN pip install --upgrade pip setuptools 

RUN pip install django djangorestframework django-cors-headers gunicorn psycopg2-binary

COPY . .


EXPOSE 8000

CMD ["sh", "entrypoint.sh"]

FROM postgres:latest

ENV POSTGRES_USER=test
ENV POSTGRES_PASSWORD=test
ENV POSTGRES_DB=test



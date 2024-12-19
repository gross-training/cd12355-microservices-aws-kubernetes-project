FROM python:3.10.0-slim-buster

WORKDIR /app

COPY analytics/requirements.txt analytics/requirements.txt

RUN apt update -y && apt install build-essential libpq-dev -y && pip install --upgrade pip setuptools wheel pip && pip install -r analytics/requirements.txt

COPY analytics/app.py .
COPY analytics/config.py .

CMD python app.py

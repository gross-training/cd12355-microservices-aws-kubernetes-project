FROM python:3.10.0-slim-buster

WORKDIR /app

COPY ./requirements.txt requirements.txt

RUN apt update -y && apt install build-essential libpq-dev -y && pip install --upgrade pip setuptools wheel pip && pip install -r requirements.txt

COPY ./app.py .
COPY ./config.py .

CMD python app.py
FROM python:3.8.0-slim

WORKDIR /src

COPY ./requirements.txt requirements.txt

RUN apt update -y && apt install build-essential libpq-dev -y && pip install --upgrade pip setuptools wheel pip && pip install -r requirements.txt

COPY ./app.py ./config.py .

CMD python app.py
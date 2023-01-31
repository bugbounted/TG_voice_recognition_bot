FROM python:3.12.0a4-buster

ADD . /app
WORKDIR /app

RUN python -m venv venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt


CMD . venv/bin/activate && exec python main.py

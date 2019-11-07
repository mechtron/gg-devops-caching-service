FROM python:3.7-alpine3.7

RUN apk --update add --no-cache redis
RUN pip3 install --upgrade pip

RUN pip3 install setuptools
RUN apk add --no-cache --virtual python3-dev libffi-dev

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

RUN mkdir /app
COPY . /app

EXPOSE 8000

ENV PYTHONUNBUFFERED=1

WORKDIR /app
CMD python3 server.py

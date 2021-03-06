# TO BUILD & RUN:
# docker build . --tag tweetsenti:latest && docker run --rm -it tweetsenti:latest
#FROM ubuntu:18.04
FROM python:stretch

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

RUN apt-get install -y python3-pip
RUN apt-get install -y python3-tk
RUN apt-get install -y rabbitmq-server
RUN apt-get install -y python-pika
RUN apt-get install -y python3-matplotlib

WORKDIR /
ADD requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt

CMD service rabbitmq-server start && \
    /bin/bash

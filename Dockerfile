FROM python:slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends git \
    && apt-get purge -y --auto-remove \
    && pip install --upgrade awscli awsebcli s3cmd \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir ~/.aws
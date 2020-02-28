FROM python:slim-buster

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update \
    && apt-get install -y --no-install-recommends git nodejs \
    && npm install \
    && apt-get purge -y --auto-remove \
    && pip install --upgrade awscli awsebcli s3cmd \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir ~/.aws

FROM python:slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends git curl rsync \
    && pip install --upgrade awscli awsebcli s3cmd
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs
RUN apt-get purge -y --auto-remove \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir ~/.aws

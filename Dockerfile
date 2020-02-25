FROM python:slim-buster

RUN apk --no-cache --update add git && \
    pip install --upgrade awscli awsebcli s3cmd
RUN mkdir ~/.aws
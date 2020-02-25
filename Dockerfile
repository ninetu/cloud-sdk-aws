FROM python:slim-buster

RUN pip install --upgrade awscli awsebcli s3cmd
RUN mkdir ~/.aws
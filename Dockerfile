FROM python:slim-buster

RUN pip install --upgrade awscli awsebcli s3cmd
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]
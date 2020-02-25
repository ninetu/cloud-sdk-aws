FROM python:slim-buster

RUN pip install --upgrade awscli awsebcli s3cmd python-magic && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]
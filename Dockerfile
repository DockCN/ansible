FROM alpine:3.4
MAINTAINER custa "custa@126.com"
ENV REFRESHED_AT 2017-04-21
RUN apk update && apk add py-pip && pip install --upgrade pip
RUN apk add gcc python-dev musl-dev libffi-dev openssl-dev && \
	pip install ansible && \
	apk del gcc python-dev musl-dev libffi-dev openssl-dev

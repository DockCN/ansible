FROM alpine
MAINTAINER custa "custa@126.com"
ENV REFRESHED_AT 2017-04-21
RUN apk update && \
	apk add py-pip && pip install --upgrade pip && \
	apk add gcc python-dev musl-dev libffi-dev openssl-dev && \
	apk add libssl1.0 && pip install ansible==1.9.6 && \
	apk del gcc python-dev musl-dev libffi-dev openssl-dev && \
	rm -rf /var/cache/apk/*

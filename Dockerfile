FROM	alpine:3.12
ENV	REFRESHED_AT 2020-12-12
RUN	apk update && \
	apk add ansible=2.9.14-r0 sshpass openssh-client && \
	rm -rf /var/cache/apk/*


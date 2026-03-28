FROM python:3.14-alpine3.23

# Install
RUN apk add --no-cache postgresql18-client busybox-openrc bash curl

# source: https://github.com/sekka1/aws-cli-docker/blob/master/1.15.47/Dockerfile
RUN apk --no-cache update && \
    apk --no-cache add ca-certificates groff less && \
    pip3 --no-cache-dir install awscli==1.32.111 && \
    rm -rf /var/cache/apk/*

COPY scripts /scripts
WORKDIR /scripts

# Configure
COPY psqlbackup /etc/cron.d/psqlbackup

# Apply cron job
RUN crontab /etc/cron.d/psqlbackup

RUN mkdir /backups

RUN touch /var/log/cron.log
CMD crond -f

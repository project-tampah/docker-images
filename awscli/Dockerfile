FROM garland/aws-cli-docker:1.15.47

COPY ./awscli/maintenance /usr/local/bin/maintenance
COPY ./postgres/maintenance/_sourced /usr/local/bin/maintenance/_sourced

RUN chmod +x /usr/local/bin/maintenance/*

RUN mv /usr/local/bin/maintenance/* /usr/local/bin \
    && rmdir /usr/local/bin/maintenance

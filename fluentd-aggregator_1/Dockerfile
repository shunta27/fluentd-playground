FROM ubuntu:14.04

RUN apt-get -y update && \
  apt-get install -y \
  gcc \
  make \
  netcat \
  lsof \
  vim \
  curl

RUN curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent3.sh | sh

# td-agent plugin
RUN td-agent-gem install \
  fluent-plugin-forest \
  fluent-plugin-cloudwatch-logs

EXPOSE 24224/udp
EXPOSE 24224/tcp

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "./docker-entrypoint.sh" ]

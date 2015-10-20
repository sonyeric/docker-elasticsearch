# This will prepare a elasticsearch with head, bigdesk plugins installed.
# A logstash_netflow- started index will be parsed.

FROM elasticsearch:2.0
MAINTAINER Baohua Yang

ENV DEBIAN_FRONTEND noninteractive

RUN /usr/share/elasticsearch/bin/plugin -i mobz/elasticsearch-head \
  &&  /usr/share/elasticsearch/bin/plugin -i lukas-vlcek/bigdesk \
  &&  /usr/share/elasticsearch/bin/plugin -i elasticsearch/marvel/latest

COPY ./logstash_netflow.json /tmp/

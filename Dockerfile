# This will prepare a elasticsearch with head, bigdesk plugins installed.
# A logstash_netflow- started index will be parsed.

FROM elasticsearch:1.7
MAINTAINER Baohua Yang

ENV DEBIAN_FRONTEND noninteractive

RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head \
  &&  /usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk

COPY ./logstash_netflow.json /tmp/

Docker-Elasticsearch
===
Docker images for the elasticsearch.


# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-elasticsearch/blob/master/Dockerfile)

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-elasticsearch` GitHub repo](https://github.com/yeasy/docker-elasticsearch).

# What is docker-elasticsearch?
Docker image with elasticsearch installed. The image is built based on [elasticsearch 1.7](https://hub.docker.com/_/elasticsearch/).

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/elasticsearch/](https://registry.hub.docker.com/u/yeasy/elasticsearch/).


## In Dockerfile
```sh
FROM yeasy/elasticsearch:latest
```

## Local Run
```sh
$ docker run -d -v "$PWD/config":/usr/share/elasticsearch/config -v "$PWD/esdata":/usr/share/elasticsearch/data yeasy/elasticsearch
```

# Which image is based on?
The image is based on official `elasticsearch:1.7`.

# What has been changed?

## add useful plugins
Add the [head](https://github.com/mobz/elasticsearch-head), [bigdesk](http://bigdesk.org/), [marvel](https://www.elastic.co/guide/en/marvel/current/index.html) plugins.

## add netflow template
Netflow event from the logstash can be automatically put into the db.


# Supported Docker versions

This image is officially supported on Docker version 1.7.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-elasticsearch/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-elasticsearch/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-elasticsearch/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

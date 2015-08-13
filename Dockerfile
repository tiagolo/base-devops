FROM debian:wheezy
MAINTAINER Tiago Lopes da Costa <tiagolo@gmail.com>

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN mkdir /docker-entrypoint-initdb.d

VOLUME /var/lib/mysql
VOLUME /sonatype-work
VOLUME /var/jenkins_home

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]

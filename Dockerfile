FROM debian:wheezy
MAINTAINER Tiago Lopes da Costa <tiagolo@gmail.com>

VOLUME /var/lib/mysql
VOLUME /sonatype-work
VOLUME /var/jenkins_home

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]

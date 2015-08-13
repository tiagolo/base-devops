#!/bin/bash

set -e

chown -R 200 /sonatype-work
chown -R jenkins:jenkins /var/jenkins_home

exec "$@"

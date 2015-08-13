#!/bin/bash

set -e

echo pwd
echo "$USER"
#chown -R 200 /sonatype-work

exec "$@"

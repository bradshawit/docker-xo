#! /bin/sh

set -e

forever start /var/lib/xo-server

tail -f /var/lib/xo-server/redis.log &
wait

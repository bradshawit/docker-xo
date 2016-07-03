#! /bin/sh

set -e

forever start /var/lib/xo-server

touch /var/lib/xo-server/redis.log
tail -f /var/lib/xo-server/redis.log &
wait

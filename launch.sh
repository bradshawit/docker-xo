#! /bin/sh

set -e

echo never > /sys/kernel/mm/transparent_hugepage/enabled

/etc/init.d/redis_6379 start

forever start /var/lib/xo-server

tail -f /var/lib/xo-server/redis.log &
wait

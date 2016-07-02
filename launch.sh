#! /bin/sh

set -e

echo never > /sys/kernel/mm/transparent_hugepage/enabled

redis-server

forever start /var/lib/xo-server &
wait

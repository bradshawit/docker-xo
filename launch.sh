#! /bin/sh

set -e

redis-server

forever start /var/lib/xo-server &
wait

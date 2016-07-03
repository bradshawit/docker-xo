#! /bin/sh

set -e

# forever start /var/lib/xo-server
/etc/init.d/redis_6379 start

cd /var/lib/xo-server &
npm start &
wait
#touch /var/lib/xo-server/redis.log
#tail -f /var/lib/xo-server/redis.log &
#wait

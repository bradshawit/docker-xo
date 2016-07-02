#! /bin/sh

set -e

sed -i 's/&>>\/var\/log\/rundeck\/service.log &$//g' /etc/init.d/rundeckd
sed -i "s/localhost:4440/$SERVERURL:4440/g" /etc/rundeck/rundeck-config.properties
sed -i "s/localhost:4440/$SERVERURL:4440/g" /etc/rundeck/framework.properties


/etc/init.d/rundeckd start &
wait

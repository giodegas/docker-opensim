#!/bin/sh
### In redis.sh (make sure this file is chmod +x):


cd /root
exec redis-server /etc/redis/redis.conf

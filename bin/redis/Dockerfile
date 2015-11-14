FROM giodegas/opensim-bin
MAINTAINER Giovanni De Gasperis  @giodegas

RUN apt-get update && apt-get install -y redis-server

RUN mv /etc/redis/redis.conf /etc/redis/redis.conf.org
RUN sed s/"bind 127.0.0.1"/"bind 0.0.0.0"/ /etc/redis/redis.conf.org >/etc/redis/redis.conf

# Add redis deamon to run it at startup		
RUN mkdir /etc/service/redis		
COPY redis.sh /etc/service/redis/run		
RUN chmod +x /etc/service/redis/run

# Redis
EXPOSE 6379/tcp

# Opensimulator
EXPOSE 9000/tcp
EXPOSE 9000/udp

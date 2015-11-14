FROM giodegas/opensim-bin
MAINTAINER Giovanni De Gasperis  @giodegas

RUN apt-get update && apt-get -y install unzip

RUN cd /opt && rm -fr opensim
RUN wget http://download.craft-world.org/0.8.2-craft-dev.zip && unzip 0.8.2-craft-dev.zip && mv 0.8.2-craft-dev.zip opensim
# Opensimulator
EXPOSE 9000/tcp
EXPOSE 9000/udp

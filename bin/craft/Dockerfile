FROM giodegas/opensim-bin
MAINTAINER Giovanni De Gasperis  @giodegas

RUN apt-get update && apt-get -y install unzip ssh-client

RUN cd /opt && rm -fr opensim
RUN cd /opt && wget http://download.craft-world.org/0.8.2-craft-dev.zip && unzip 0.8.2-craft-dev.zip && mv 0.8.2-craft-dev2 opensim

# First script to execute
COPY after_install.sh /sbin/after_install
RUN chmod +x /sbin/after_install

# Opensimulator ports
EXPOSE 9000/tcp
EXPOSE 9000/udp

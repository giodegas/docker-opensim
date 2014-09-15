FROM giodegas/opensim-bin-standalone

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

# useful to upload with scp on OAR file remotely for region backup 
RUN apt-get install -y ssh-client

ADD StandaloneCommon.ini.extdb /opensim-0.8.0.1/bin/config-include/StandaloneCommon.ini
ADD Regions.ini /opensim-0.8.0.1/bin/Regions/Regions.ini

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9001/tcp 
EXPOSE 9001/udp

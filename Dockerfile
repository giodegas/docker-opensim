FROM giodegas/opensim-bin-standalone

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD StandaloneCommon.ini config-include/StandaloneCommon.ini

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000/tcp 
EXPOSE 9000/udp

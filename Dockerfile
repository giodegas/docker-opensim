FROM giodegas/opensim-bin-standalone

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000/tcp 
EXPOSE 9000/udp

ADD StandaloneCommon.ini StandaloneCommon.ini.extdb

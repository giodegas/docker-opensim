FROM giodegas/opensim-bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD OpenSim.ini OpenSim.ini

ADD StandaloneCommon.ini.extdb /opensim-0.8.0.1/bin/config-include/StandaloneCommon.ini

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000/tcp 
EXPOSE 9000/udp

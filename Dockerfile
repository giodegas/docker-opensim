FROM giodegas/opensim-bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD OpenSim.ini /opensim-0.8.0.1/bin/OpenSim.ini

RUN cp config-include/StandaloneCommon.ini.example config-include/StandaloneCommon.ini

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000/tcp 
EXPOSE 9000/udp

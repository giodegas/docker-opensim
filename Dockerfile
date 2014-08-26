FROM giodegas/opensim-bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD OpenSim.ini OpenSim.ini

RUN cp config-include/StandaloneCommon.ini.example config-include/StandaloneCommon.ini

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000

FROM giodegas/opensim-bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD OpenSim.ini OpenSim.ini

RUN rm config-include/StandaloneCommon.ini
ADD StandaloneCommon.ini.extdb config-include/StandaloneCommon.ini.extdb
RUN mv config-include/StandaloneCommon.ini.extdb config-include/StandaloneCommon.ini

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000/tcp 
EXPOSE 9000/udp

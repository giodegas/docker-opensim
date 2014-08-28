FROM giodegas/opensim-bin-standalone

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN rm config-include/StandaloneCommon.ini
ADD StandaloneCommon.ini StandaloneCommon.ini
RUN mv StandaloneCommon.ini config-include/.

#External OpensSim port to connect SL compatible viewers. 
EXPOSE 9000/tcp 
EXPOSE 9000/udp

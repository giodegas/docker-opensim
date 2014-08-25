FROM giodegas/opensim:bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN cp OpenSim.ini.example OpenSim.ini

WORKDIR config-include

RUN cp StandaloneCommon.ini.example StandaloneCommon.ini

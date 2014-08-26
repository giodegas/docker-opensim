FROM giodegas/opensim-bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD OpenSim.ini OpenSim.ini

RUN cp config-include/StandaloneCommon.ini.example config-include/StandaloneCommon.ini

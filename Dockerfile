FROM giodegas/opensim-bin

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

ADD OpenSim.ini OpenSim.ini

RUN cp StandaloneCommon.ini.example StandaloneCommon.ini

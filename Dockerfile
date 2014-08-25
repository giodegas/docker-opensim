FROM derekslager/mono:3.6.0

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

# Install OpenSim binary distribution
RUN curl http://opensimulator.org/dist/opensim-0.8.0.1.tar.gz | tar xz

WORKDIR opensim-0.8.0.1/bin


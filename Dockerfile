FROM derekslager/mono:3.6.0

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN apt-get update && apt-get -y install curl

# Install OpenSim binary distribution
RUN curl http://track.opensimulator.org/link_counter.php?url=http://opensimulator.org/dist/opensim-0.8.0.1.tar.gz | tar xz

WORKDIR opensim-0.8.0.1/bin


FROM derekslager/mono:3.6.0

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

# Install OpenSim binary distribution
RUN wget http://track.opensimulator.org/link_counter.php?url=http://opensimulator.org/dist/opensim-0.8.0.1.tar.gz

RUN tar zxvf opensim-0.8.0.1.tar.gz

WORKDIR opensim-0.8.0.1/bin


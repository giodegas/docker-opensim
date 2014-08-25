FROM derekslager/mono:3.6.0

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

apt-get install git

# Install OpenSim
RUN git clone https://github.com/opensim/opensim /usr/src/opensim

WORKDIR /usr/src/opensim

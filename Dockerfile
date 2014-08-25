FROM derekslager/mono

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

# Install OpenSim
RUN git clone https://github.com/opensim/opensim /usr/src/opensim

WORKDIR /usr/src/opensim

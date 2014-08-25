FROM debian:jessie

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN apt-get update && apt-get -y install curl bzip2 g++ libgettextpo0 gettext file

# Install mono-complete
RUN apt-get -y install mono-complete

# Install OpenSim binary distribution
RUN curl http://opensimulator.org/dist/opensim-0.8.0.1.tar.gz | tar xz

WORKDIR opensim-0.8.0.1/bin


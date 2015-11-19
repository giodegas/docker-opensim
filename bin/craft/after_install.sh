#!/bin/sh
### In after_install.sh (make sure this file is chmod +x):

cd /opt/opensim/bin
# run initial configuration script ...
./opensim-ode.sh

#rename   unrun to run script		
mv /etc/service/opensim/unrun /etc/service/opensim/run		

#remove itself
rm /sbin/after_install

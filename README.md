# mono+opensim
## binary distribution standalone configuration

with external mysql/mariadb server at an external IP (192.168.1.112)

This Docker image provides a light base binary install with Mono, for .NET and [OpenSimulator](http://opensimulator.org)
deployment on Linux, linked to an external database server that keep persistence.

The default standalone configuration as described [here](http://opensimulator.org/wiki/Configuration).

Suggested usage:

### Step 1 
open bash session inside the docker image

    $ sudo docker run -it -p 9000:9000/udp -p 9000:9000/tcp giodegas/opensim-bin-standalone bash

### Step 2
if started for the first time:

    $ rm Regions/Regions.ini 
    $ mono OpenSim.exe

You should be able to login with a SL compatibile viewer, with the loginuri:

    $ http://127.0.0.1:9000
and answer to all the basic questions (Region Name, Estate name, Owner avatar name, password, ...), but remember to use 97098393-a57d-4e28-90d5-6f185e557c8a as regio ID, the same used in the Regions.ini file

### Step 3
else:

    $ mono OpenSim.exe

(it will connect to the external DB with persistence)

### Step 4 
after you are done with building/scripting, to make a backup of your region, in the OpenSim console:

    $ save oar <OARfileName>.oar
    $ quit

then you can use scp (secure copy through ssh) to save your region backup OAR file to an external IP host:

    $ scp <OARfileName>.oar <username>@<host>:.
    

# mono+opensim
## binary distribution standalone configuration

This Docker image provides a light base binary install with Mono, for .NET and [OpenSimulator](http://opensimulator.org)
deployment on Linux.

The default standalone configuration as described [here](http://opensimulator.org/wiki/Configuration).

    $ sudo docker run -it -p 9000:9000 giodegas/opensim-bin-standalone bash

then

    $ mono OpenSim.exe
    
and answer to the basic questions (Region Name, Owner avatar name, estate...).

You should be able to login with a SL compatibile viewer, with the loginuri:

    $ ... (TBD)
    

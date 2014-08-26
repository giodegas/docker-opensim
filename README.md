# mono+opensim
## binary distribution

This Docker image provides a light base binary install with Mono, for .NET and [OpenSimulator](http://opensimulator.org)
deployment on Linux.

You have to supply your own configuration files as described [here](http://opensimulator.org/wiki/Configuration).

    $ sudo docker run giodegas/opensim-bin mono OpenSim.exe
    

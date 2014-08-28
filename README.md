# mono+opensim
## binary distribution standalone configuration

with external mysql/mariadb server at IP 192.168.1.112

This Docker image provides a light base binary install with Mono, for .NET and [OpenSimulator](http://opensimulator.org)
deployment on Linux, linked to an external database server that keep persistence.

The default standalone configuration as described [here](http://opensimulator.org/wiki/Configuration).

    $ sudo docker run -it -p 9000:9000/udp -p 9000:9000/tcp giodegas/opensim-bin-standalone mono OpenSim.exe

and answer to all the basic questions (Region Name, Estate name, Owner avatar name, password, ...).

You should be able to login with a SL compatibile viewer, with the loginuri:

    $ http://127.0.0.1:9000
    

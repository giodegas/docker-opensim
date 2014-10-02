# SharperNight Virtual World L'Aquila Edition

by [Giovanni De Gasperis](http://about.me/giodegas), [Department of Information Engineering and Computer Science and Mathematics](http://www.disim.univaq.it), [University of L'Aquila, ITALY](http://www.univaq.it)


This Docker image provides a light base binary install with Mono, for .NET and [OpenSimulator](http://opensimulator.org) deployment on Linux, linked to an external database server that keep persistence.
This setup has some specific customization, derived from the [default](http://opensimulator.org/wiki/Configuration) standalone OpenSim configuration, that were implemented to be used at the event of [SharperNight](http://sharper-night.lngs.infn.it), 26 September 2014 in [L'Aquila](http://en.wikipedia.org/wiki/L%27Aquila), ITALY.

## Suggested usage:

### Step 0

The host should have the following configuration and software installed:
* 192.168.10.10/24 IP configured in the LAN
* docker layer (see [boot2docker](http://boot2docker.io) if needed)
* run a [MariaDB](http://mariadb.org) or (MySql) server
* run a [Redis](http://redis.io) server
* have [LeapMotion V2.1.X Tracking beta drivers](http://developer.leapmotion.com) installed
* run my [LPRedisProducer.py](LPRedisProducer.py) worker

in a separate shell:

    $ python LPRedisProducer.py


### Step 1 
open bash session inside the docker image

    $ sudo docker run -it -p 9001:9001/udp -p 9001:9001/tcp giodegas/osbin-sharper bash
    $ mono OpenSim.exe

Avatar: Test User 123


### Step 2 
load the SharperLand world:

    # load oar SharperLand260914.oar

Then you should be able to login into SharperLan with a SL compatibile viewer, with the loginuri:

    http:/192.168.10.100:9001

### Step 3

Remember to use [os-redis-sharp](http://github.com/giodegas/os-redis-sharp) scripts inside virtual objects that you want to move inside OpenSim.

If you are using [boot2docker](http://boot2docker.io), remember to configure properly the port forwarding table in [Virtual Box](http://www.virtualbox.org) :
![Port Forwarding table]
(VBox_portForwarding.png)
 
# Acknowledgments

This virtual world is an aggregation of many open source 3D objects and creations:
* [OpenVCE](http://openvce.net/vwassets) Virtual World Assets from  [Artificial Intelligence Applications Institute](http://www.aiai.ed.ac.uk) (AIAI) within the [School of Informatics](http://www.ed.ac.uk/schools-departments/informatics) at the [University of Edinburgh](http://www.ed.ac.uk)
* [Avatar Island](http://opensim-creations.com/2013/01/18/avatar-island-oar) from [jamiewright](http://opensim-creations.com/members/jamiewright/profile)
* [ICSI Micromanipulator](http://3dwarehouse.sketchup.com/model.html?id=17b0630d20eb15a74e8b7b742c3e7534) reference model from [khaled](http://3dwarehouse.sketchup.com/user.html?id=0829849543039218507554165)
* Stem Cells pictures and experiment concept by Biotechnology Laboratory Staff, [University of L'Aquila](http://www.univaq.it)
* In vitro fertilisation concept by Reproduction Laboratory Staff, [University of L'Aquila](http://www.univaq.it)
* [Borexino](http://borex.lngs.infn.it) 3D reference model by L. Crippa
* Galaxies pictures from [HubbleSite Gallery](http://hubblesite.org)
* rest of 3D modeling and LSL/C-sharp scritping by the author

# opensim-bin-redis Docker image
A docker image for binary distribution of [OpenSimulator](http://opensimulator.org) and [Redis](http://redis.io) for virtual robotics experiments 

You can build up a full blown virtual world based on the well established [OpenSimulator](http://opensimulator.org) ecosystem, and use [Redis](http://redis.io) as a robot control middleware to make your [Non Player Characters (NPC)](http://opensimulator.org/wiki/NPC) behave as desired.

Docker image originally derived from [docker-opensimulator](http://github.com/QuantumObject/docker-opensimulator) .

## Usage

    $ docker run -d -p 6379:6379 -p 9000:9000 -p 9000:9000/udp giodegas/opensim-bin-redis

## First configuration :
    $ docker exec -it <container_id> after_install

## Viewer

A 3D compatible viewer is needed to login to the virtual world with your avatar to meet and interact with the NPCs:

* [Firestorm](http://www.firestormviewer.org)
* [Kokua](http://wiki.kokuaviewer.org/wiki/Kokua/Downloads) 
* [Singularity](http://www.singularityviewer.org/) 

with a proper LOGIN URI configuration:

    grid name ==> it will be region name
    login URL ==> http://<external_ip>:9000

## More
To help improve this docker container image : [giodegas/docker-opensim/bin/redis](http://github.com/giodegas/docker-opensim/tree/master/bin/redis)

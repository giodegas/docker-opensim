# Generic Standalone OpenSim distribution Docker image

A docker image for standard binary distribution of [OpenSimulator](http://opensimulator.org) virtual worlds server

Docker image derived from [docker-opensimulator](http://github.com/QuantumObject/docker-opensimulator) .

## Usage

    $ docker run -d -p 6379:6379 -p 9000:9000 -p 9000:9000/udp giodegas/opensim-bin

## First configuration :
    $ docker exec -it <container_id> after_install

## Viewer

A 3D compatible viewer is needed to login to the virtual world with your avatar to meet and interact with the NPCs:

* [Firestorm](http://www.firestormviewer.org)
* [Kokua](http://wiki.kokuaviewer.org/wiki/Kokua/Downloads) 
* [Singularity](http://www.singularityviewer.org/) 

with a proper LOGIN URI configuration:

    grid name ==> it will be region name defined by you during first run
    login URL ==> http://<external_ip>:9000

## More
To help improve this docker container image : [giodegas/docker-opensim/bin-generic](http://github.com/giodegas/docker-opensim/tree/master/bin-generic)

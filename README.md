## **Myner**

#### By _**Robert Bruce**_

## Description

_This application is a docker container that runs the T-Rex x16r mining algorithm. It does this through the use of nvidia's provided cuda-enabled docker container images. This permits rapid comparison of mining efficiency across various versions of cuda and T-rex versions. It is important to note that use of this(these) docker containers is reliant upon the selected cuda compatibility with the host's installed driver version._

Also consider checking out a server app that I've created as a matter of convenience, [Myner Server](https://github.com/entegral/myner-server).

## Setup/Installation Requirements

This project assumes that you already have a machine configured with the lastest Nvidia drivers and Docker installed.

* _Clone GitHub URL in terminal_
```
git clone <project-url>
```
* _Select a branch for your desired Cuda Runtime Environment (master branch is latest)_

* _Modify build_and_run file with your cryptocurrency mining credentials (i.e. your crypto address, preferred mining pool, password parameters, etc)_
```
vim build_and_run
```

* _Create container from image, from root directory:_
```
./build_and_run
```

* _After running build_and_run script, Docker will automatically start myner when the machine boots up. To stop Myner/container_
```
docker stop myner
```

* _To restart Myner/container_
```
docker stop myner
docker start myner
```

* _Optionally monitor running container_
```
docker logs myner
```

## Technologies Used
_GitHub, Docker, Nvidia Hardware, Linux(centos/ubuntu)_

### License
Copyright (c) 2018 **_RB_** GNU General Public License 3.0

# simple-redis
Centos7+redis3.2 Dockerfile

## Installation
Pull the image from the docker index rather than downloading the git repo. This prevents you having to build the image on every docker host.
```sh
docker pull romeohua/simple-redis:latest
```


## Running
To simply run the container:
```sh
docker run --name redis -p 6379:6379 -d romeohua/simple-redis
```

# docker-golinter

[![Docker Automated buil](https://img.shields.io/docker/automated/cl3m3nt/golinter.svg?style=flat-square)](https://hub.docker.com/r/cl3m3nt/golinter/)
[![Docker Build Statu](https://img.shields.io/docker/build/cl3m3nt/golinter.svg?style=flat-square)](https://hub.docker.com/r/cl3m3nt/golinter/)
[![Docker Pulls](https://img.shields.io/docker/pulls/cl3m3nt/golinter.svg?style=flat-square)](https://hub.docker.com/r/cl3m3nt/golinter/)


## Build

```
docker build -t cl3m3nt/golinter .
```

## Env variable

| Variable | Value | Description |
| ------- |:------|:------------|
| `SET_EXIT_STATUS` |  1 or 0 | SET_EXIT_STATUS disable by default|
| `WATCHING` |  1 or 0 | WATCHING enabled by default |


## Run

```
$ docker run --rm -it -e WATCHING=1 -e SET_EXIT_STATUS=0 -v $PWD/go/src:/go/src cl3m3nt/golinter
.....
.....
.....
.....
$ echo $?
3
```

With watching enable :

```
$ docker run --rm -v $PWD/go/src:/go/src cl3m3nt/golinter
--> Press Ctrl+C to force build, Ctrl+\ to exit.
--> watching "/go".........................change detected, building...

Linting : /go/src/api
Linting : /go/src/data_stores
...

--> resumed watching..........
```

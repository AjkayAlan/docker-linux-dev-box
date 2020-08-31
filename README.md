# docker-linux-dev-box

Creates a linux development environment with docker that has most nice things installed

## Purpose

I wanted to create a docker container I can use to do most software development in. I use VSCode's [remote container](https://code.visualstudio.com/docs/remote/containers) feature to easily interact with it.

## Prerequisites

* Install [Docker](https://www.docker.com/get-started)
* Clone the repo

## Building

Easy enough, run the following:

```sh
docker build -t ajkayalan/docker-linux-dev-box:latest .
```

## Running

After building, you need to run the container in detached mode:

```sh
docker run --name docker-linux-dev-box -d ajkayalan/docker-linux-dev-box:latest
```

## Destroying

If you do something bad and need to start from scratch, just destroy the container:

```sh
docker container stop $(docker container ls -q --filter name=docker-linux-dev-box)
docker container docker-linux-dev-box
```

## Pipeline & Docker Hub

The dockerfile is build and deployed using [GitHub Actions](https://docs.github.com/en/actions), specifically using the docker [build-push-action](https://github.com/docker/build-push-action)

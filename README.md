# docker-linux-dev-box

Creates a linux development environment with docker that has most nice things installed. Source code located on [github](https://github.com/AjkayAlan/docker-linux-dev-box)

## Purpose

I wanted to create a docker container I can use to do most software development in. I use VSCode's [remote container](https://code.visualstudio.com/docs/remote/containers) feature to easily interact with it.

## Prerequisites

* Install [Docker](https://www.docker.com/get-started)
* Clone the repo
* Switch your preferred terminal to use a [nerdfont](https://github.com/ryanoasis/nerd-fonts). I personally like [Cascadia Code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode)

## Building

Easy enough, run the following after cloning the source code:

```sh
docker build -t ajkayalan/docker-linux-dev-box:latest .
```

## Running

If you haven't built locally but want to use the image, run:

```sh
docker pull ajkayalan/docker-linux-dev-box
```

After pulling or building, you need to run the container in detached mode:

```sh
docker run --name docker-linux-dev-box -t -d ajkayalan/docker-linux-dev-box:latest
```

## Getting Terminal Access

Simply open a shell in interactive mode:

```sh
docker exec -it docker-linux-dev-box zsh
```

## Destroying

If you do something bad and need to start from scratch, just destroy the container:

```sh
docker container stop docker-linux-dev-box
docker container rm docker-linux-dev-box
```

## Pipeline & Docker Hub

The dockerfile is build and deployed using [GitHub Actions](https://docs.github.com/en/actions), specifically using the docker [build-push-action](https://github.com/docker/build-push-action)

## TODO's

* Don't pin a specific version of Java, get latest LTS instead
* Don't pin a specific version of .NET Core, get latest LTS instead

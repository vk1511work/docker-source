# Docker custom platform

## Dockerfile
You can set your Dockerfile to your preferred platform:

```dockerfile
FROM --platform=linux/amd64 centos:7.8.2003
```
To use xdebug you need to open port 9000:

```dockerfile
EXPOSE 9000
```

## Setup

To create a docker container, run on the command line:

```shell
docker-compose up
```

## PHPStorm settings

Use Settings-PHP-CLI Interpreter to add a new Interpreter from Docker.

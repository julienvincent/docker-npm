# Nginx Dockerfile

This repository contains an automated **Dockerfile** of [Nodejs](https://nodejs.org/) to run npm commands on servers

## Supported tags

+ `latest`

### Base Docker Image

* [debian:jessie](https://registry.hub.docker.com/_/debian/)

### Usage

docker-compose.yml:

    npm:
      image: julienvincent/npm
      volumes:
        - laravel/folder:/data/www
      working_dir: /data/www

using:

    docker-compose run npm install
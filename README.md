# Docker Nginx JavaScript

Pure njs(Nginx JavaScript) Docker image, more convenient for development and debugging.

## Quick reference

Supported tags and respective [Dockerfile links](https://github.com/soulteary/docker-njs/blob/main/Dockerfile)

### NJS 0.5.0 (Nginx 1.19.6+)

- Tag List: 0.5.0-alpine-slim / 0.5.0-alpine / 0.5.0-slim / 0.5.0
- [Env File](https://github.com/soulteary/docker-njs/blob/main/njs/0.5.0/.env)
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.5.0-alpine/.env)

### NJS 0.4.4 (Nginx 1.17.10 ~ 1.19.5)

- Tag List: 0.4.4-alpine-slim / 0.4.4-alpine / 0.4.4-slim / 0.4.4
- [Env File](https://github.com/soulteary/docker-njs/blob/main/njs/0.4.4/.env)
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.4.4-alpine/.env)
### NJS 0.3.9 (Nginx 1.17.10-)

- Tag List: 0.3.9-alpine-slim / 0.3.9-alpine / 0.3.9-slim / 0.3.9
- [Env File](https://github.com/soulteary/docker-njs/blob/main/njs/0.3.9/.env)
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.3.9-alpine/.env)

## What is nginx/njs ?

Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.

[wikipedia.org/wiki/Nginx](https://wikipedia.org/wiki/Nginx)

![logo](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/nginx/logo.png)

njs is a subset of the JavaScript language that allows extending nginx functionality. njs is created in compliance with ECMAScript 5.1 (strict mode) with some ECMAScript 6 and later extensions. The compliance is still evolving.

[nginx.org/en/docs/njs/](https://nginx.org/en/docs/njs/)

## How to use this image

You can use it as repl server or executor.

### Repl Server

Just run the most common docker command:

```bash
$ docker run -it --rm njs:0.5.0
```

### Run a single njs script

You can run a njs script by using the njs Docker image directly:

```bash
$ docker run -it --rm --name my-running-script -v "$PWD":/app njs:0.5.0 /app/your-script.js
```

## Image Variants

The njs images come in many flavors, each designed for a specific use case.

### njs:<version>

Strip njs from the nginx offical docker image and re-use debian for packaging and building.

### njs:<version>-alpine

This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

### njs:<version>-slim

Compressed debian image.

### njs:<version>-alpine-slim

Compressed alpine image.

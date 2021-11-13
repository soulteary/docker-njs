# Docker Nginx JavaScript

Pure njs(Nginx JavaScript) Docker image, more convenient for development and debugging.

## Quick reference

Supported tags and respective [Dockerfile links](https://github.com/soulteary/docker-njs/blob/main/Dockerfile)

### NJS 0.7.0 (Nginx 1.21.4+)

- Tag List: 0.7.0-alpine / 0.7.0
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.7.0-alpine/.env)

### NJS 0.6.2 (Nginx 1.21.3+)

- Tag List: 0.6.2-alpine / 0.6.2
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.6.2-alpine/.env)

### NJS 0.6.1 (Nginx 1.21.1+)

- Tag List: 0.6.1-alpine / 0.6.1
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.6.1-alpine/.env)

### NJS 0.5.3 (Nginx 1.19.9 ~ 1.21.0+)

- Tag List: 0.5.3-alpine / 0.5.3
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.5.3-alpine/.env)

### NJS 0.5.2 (Nginx 1.19.8)

- Tag List: 0.5.2-alpine-slim / 0.5.2-alpine / 0.5.2-slim / 0.5.2
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.5.2-alpine/.env)

### NJS 0.5.1 (Nginx 1.19.7)

- Tag List: 0.5.1-alpine-slim / 0.5.1-alpine / 0.5.1-slim / 0.5.1
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.5.1-alpine/.env)

### NJS 0.5.0 (Nginx 1.19.6)

- Tag List: 0.5.0-alpine-slim / 0.5.0-alpine / 0.5.0-slim / 0.5.0
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.5.0-alpine/.env)

### NJS 0.4.4 (Nginx 1.17.10 ~ 1.19.5)

- Tag List: 0.4.4-alpine-slim / 0.4.4-alpine / 0.4.4-slim / 0.4.4
- [Env File - Alpine](https://github.com/soulteary/docker-njs/blob/main/njs/0.4.4-alpine/.env)
### NJS 0.3.9 (Nginx 1.17.10-)

- Tag List: 0.3.9-alpine-slim / 0.3.9-alpine / 0.3.9-slim / 0.3.9
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

### njs:\<version\> / njs:\<version\>-alpine

> Strip njs from the nginx offical docker alpine image and re-use alpine system for packaging and building.

This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

### njs:\<version\>-alpine-slim / njs:\<version\>-slim

Compressed alpine image.

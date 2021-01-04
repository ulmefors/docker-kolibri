# kolibri

[![CircleCI](https://circleci.com/gh/ulmefors/kolibri.svg?style=svg)](https://circleci.com/gh/ulmefors/kolibri)

[![Image](https://images.microbadger.com/badges/image/ulmefors/kolibri.svg)](https://microbadger.com/images/ulmefors/kolibri)

Run [kolibri](https://learningequality.org/kolibri) in docker. See [kolibri repository](https://github.com/learningequality/kolibri) for details on application.

## Install

### Docker

```shell
$ curl -sSL https://get.docker.com | sh  # Install docker
$ sudo usermod -aG docker $USER  # Add user to docker group
```

> **NOTE:** User must do logout/login cycle to update group memberships.

## Run

```shell
$ docker build -t ulmefors/kolibri .
$ docker-compose up -d
```

Access on [localhost:8080](http://localhost:8080)

## Stop

Stop containers, and optionally remove volume

```shell
$ docker-compose down [--volume]
```

## Todo


# docker-kolibri

[![CircleCI](https://circleci.com/gh/ulmefors/docker-kolibri.svg?style=svg)](https://circleci.com/gh/ulmefors/docker-kolibri)

[![](https://images.microbadger.com/badges/image/ulmefors/kolibri.svg)](https://microbadger.com/images/ulmefors/kolibri)

Run [kolibri](https://learningequality.org/kolibri) in docker.

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


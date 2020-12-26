.PHONY: build run stop remove
NAME=kolibri
TAG=kolibri
PORT=8080
IMAGE=$(shell docker ps -aqf name=${NAME})

rebuild: stop remove build

build:
	docker build -t ${TAG} .

run:
	docker run -d -p ${PORT}:${PORT} --name ${NAME} ${TAG}

stop:
	docker stop ${IMAGE} | true

remove:
	docker rm ${IMAGE} | true


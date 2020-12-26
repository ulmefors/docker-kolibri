.PHONY: build run stop remove
NAME=kolibri
TAG=ulmefors/kolibri
PORT=8080

rebuild: stop remove build

build:
	docker build -t ${TAG} .

run:
	docker run -d -p ${PORT}:${PORT} --name ${NAME} ${TAG}

start:
	docker start ${NAME} | true

stop:
	docker stop ${NAME} | true

remove:
	docker rm ${NAME} | true


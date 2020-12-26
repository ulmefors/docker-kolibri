FROM debian:stable-slim
LABEL maintainer Marcus Ulmefors <marcus@ulmefors.com>

RUN apt update
RUN apt install bash iproute2 curl python3 python3-pkg-resources -y
RUN curl -L https://learningequality.org/r/kolibri-deb-latest --output kolibri.deb
RUN dpkg -i kolibri.deb

EXPOSE 8080

ENTRYPOINT su kolibri -c "kolibri start --foreground"


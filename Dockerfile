FROM ubuntu:groovy
LABEL maintainer="marcus@ulmefors.com"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install software-properties-common iproute2 -y
RUN add-apt-repository ppa:learningequality/kolibri
RUN apt-get update
RUN apt-get install kolibri -y

RUN su kolibri -c "kolibri start"  # Create kolibri dirs

EXPOSE 8080

CMD su kolibri -c "kolibri start --foreground"


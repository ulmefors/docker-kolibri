FROM ubuntu:groovy

ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/ulmefors/kolibri.git" \
      org.label-schema.vcs-ref=$VCS_REF
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


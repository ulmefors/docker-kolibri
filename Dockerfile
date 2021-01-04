FROM python:3.7.9-slim-buster

ARG URL
ARG KOLIBRI_TAG
ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/ulmefors/kolibri.git" \
      org.label-schema.vcs-ref=$VCS_REF
LABEL maintainer="marcus@ulmefors.com"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install apt-utils curl iproute2 jq python3-pkg-resources -y
RUN curl --silent https://api.github.com/repos/learningequality/kolibri/releases/$URL$KOLIBRI_TAG |jq -c '.assets[].browser_download_url' |grep '\.deb' |xargs curl -L -o ./$KOLIBRI_TAG.deb
RUN dpkg -i ./$KOLIBRI_TAG.deb

RUN su kolibri -c "kolibri start"  # Create kolibri dirs

EXPOSE 8080

CMD su kolibri -c "kolibri start --foreground"


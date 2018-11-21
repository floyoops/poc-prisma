FROM node:10.6.0

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN printf "deb http://httpredir.debian.org/debian jessie-backports main non-free\ndeb-src http://httpredir.debian.org/debian jessie-backports main non-free" > /etc/apt/sources.list.d/backports.list

RUN apt-get update && \
    apt-get install -y rsync && apt-get install -y -t jessie-backports openjdk-8-jre-headless && apt-get install -y chromedriver && \
    npm install -g vue-cli

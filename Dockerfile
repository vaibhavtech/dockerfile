FROM ubuntu:16.04
MAINTAINER vaibhavtech <vaibhavtech@yahoo.co.in>

# Install apache, PHP, and supplimentary programs. openssh-server, curl, and lynx-cur are for debugging the container.

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
	php7.0 curl zip unzip libpng-dev ssh rsync

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y php7.0-gd php-curl php7.0-zip php7.0-xml php7.0-mbstring git

# Remove packge files
RUN rm -r /var/lib/apt/lists/*

EXPOSE 80 22

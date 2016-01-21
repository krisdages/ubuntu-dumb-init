FROM ubuntu:vivid
MAINTAINER Kris Dages <krisdages@git.whiteboxsoftware.net>

ADD . /bd_build
CMD ["dumb-init","--help"]
RUN dpkg -i /bd_build/dumb*.deb && rm /bd_build/dumb*.deb \
	&& apt-get update && apt-get install -qy --force-yes curl wget \
	&& /bd_build/cleanup.sh


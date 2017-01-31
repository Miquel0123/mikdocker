FROM library/debian
MAINTAINER Miquel Ferrer <miquel.ferrer.1991@gmail.com>

RUN echo "nameserver 10.27.100.1" > /etc/resolv.conf
RUN apt-get update && \
apt-get install -y mplayer && \
apt-get clean && apt-get autoclean && \
rm -rf /var/lib/apt/lists/*

VOLUME ["/tmp:/vol1"]

EXPOSE 80

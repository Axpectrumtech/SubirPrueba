FROM ubuntu:16.04

RUN apt-get -o Acquire::GzipIndexes=false update && apt-get install -y wget perl && \
   wget http://software.virtualmin.com/gpl/scripts/install.sh

RUN sh install.sh -f --hostname virtualmin.local

RUN rm -rf /var/lib/apt/lists/*

RUN printf admin\\nadmin\\n | passwd

EXPOSE 22 25 10000 10001 10002 10003 10004 10005 10006 10007 10008 10009 20000
EXPOSE 80 443 21 20 110 143
EXPOSE 53/udp 53/tcp

ENTRYPOINT ["/bin/bash", "-c", "/etc/webmin/start && tail -f /var/webmin/webmin.log"]

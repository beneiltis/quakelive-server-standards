FROM quakeliveserverstandards/ca

USER root

RUN apt-get --allow-releaseinfo-change-suite update
RUN apt-get -y install redis-server

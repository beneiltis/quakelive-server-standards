FROM quakeliveserverstandards/ca

# Install Redis
USER root
RUN apt-get --allow-releaseinfo-change-suite update
RUN apt-get -y install redis-server

USER steam
# Copy the configuration file
COPY _myservers/access.txt /home/steam/ql/baseq3/access.txt
COPY _myservers/autoexec.cfg /home/steam/ql/baseq3/autoexec.cfg
COPY configs/standard/server.cfg /home/steam/ql/baseq3/server.cfg
COPY factories/standard/ca/ca.factories /home/steam/ql/baseq3/scripts/ca.factories
COPY mappools/standard/ca/mappool.txt /home/steam/ql/baseq3/mappool.txt
COPY minqlx-plugins/standard/ca /home/steam/ql/minqlx-plugins
COPY workshop/standard/ca/workshop.txt /home/steam/ql/baseq3/workshop.txt
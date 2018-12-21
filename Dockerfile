FROM mediawiki:1.31.1
MAINTAINER Scion Tarentae <scion@tarentum.org>
WORKDIR extensions
USER www-data
RUN /usr/bin/curl -O https://s3-us-west-2.amazonaws.com/scion-public/Maintenance-REL1_31-fe57275.tar.gz \
&& tar xvzf Maintenance-REL1_31-fe57275.tar.gz \
&& rm Maintenance-REL1_31-fe57275.tar.gz 
EXPOSE 80
USER root

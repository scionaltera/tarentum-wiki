FROM mediawiki:1.31.1
MAINTAINER Scion Tarentae <scion@tarentum.org>
WORKDIR extensions
USER www-data
RUN /usr/bin/curl -O https://s3-us-west-2.amazonaws.com/scion-public/Maintenance-REL1_31-fe57275.tar.gz \
&& tar xzf Maintenance-REL1_31-fe57275.tar.gz \
&& rm Maintenance-REL1_31-fe57275.tar.gz \
/usr/bin/curl -O https://s3-us-west-2.amazonaws.com/scion-public/StopForumSpam-REL1_31-e1d74e6.tar.gz \
&& tar xzf StopForumSpam-REL1_31-e1d74e6.tar.gz \
&& rm StopForumSpam-REL1_31-e1d74e6.tar.gz
EXPOSE 80
USER root

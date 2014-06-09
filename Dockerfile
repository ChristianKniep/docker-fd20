###### Updated version of fedora (20)
FROM fedora
MAINTAINER "Christian Kniep <christian@qnib.org>"

# Solution for 'ping: icmp open socket: Operation not permitted'
RUN chmod u+s /usr/bin/ping
RUN chmod u+s /bin/ping
RUN ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime
#ADD etc/yum.repos.d/local.repo etc/yum.repos.d/local.repo
#RUN sed -i -e 's/enabled=1/enabled=0/' /etc/yum.repos.d/fedora.repo
#RUN sed -i -e 's/enabled=1/enabled=0/' /etc/yum.repos.d/fedora-updates.repo

RUN echo "2014-06-03"; yum update -y -x systemd -x systemd-libs -x iputils
RUN yum install -y wget 

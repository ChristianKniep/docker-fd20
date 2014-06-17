###### Updated version of fedora (20)
FROM fedora
MAINTAINER "Christian Kniep <christian@qnib.org>"

# Solution for 'ping: icmp open socket: Operation not permitted'
RUN chmod u+s /usr/bin/ping /bin/ping
RUN ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

RUN rm -f /etc/yum.repos.d/*
ADD etc/yum.repos.d/local_fedora.repo /etc/yum.repos.d/
ADD etc/yum.repos.d/local_fedora-updates.repo /etc/yum.repos.d/
#ADD etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo
#ADD etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo
ADD etc/yum.conf /etc/yum.conf
RUN yum clean all

RUN echo "2014-06-16"; yum update -y -x systemd -x systemd-libs -x iputils
RUN yum install -y wget 

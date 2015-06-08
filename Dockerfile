###### Updated version of fedora (20)
FROM fedora:20
MAINTAINER "Christian Kniep <christian@qnib.org>"

# Solution for 'ping: icmp open socket: Operation not permitted'
RUN ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

RUN rm -f /etc/yum.repos.d/*
ADD etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo
ADD etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo
ADD etc/yum.repos.d/qnib.repo /etc/yum.repos.d/qnib.repo
ADD etc/yum.repos.d/qnib_fd20.repo /etc/yum.repos.d/qnib_fd20.repo
ADD etc/yum.conf /etc/yum.conf
RUN echo "2015-06-08";yum clean all

RUN yum update -y -x systemd -x systemd-libs -x iputils
RUN yum install -y wget curl vim

###### Updated version of fedora (20)
FROM fedora
MAINTAINER "Christian Kniep <christian@qnib.org>"

# Solution for 'ping: icmp open socket: Operation not permitted'
RUN chmod u+s /usr/bin/ping
RUN chmod u+s /bin/ping
RUN ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

RUN yum update -y -x systemd -x systemd-libs
RUN yum install -y wget 

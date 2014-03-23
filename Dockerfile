###### Updated version of fedora (20)
FROM fedora
MAINTAINER "Christian Kniep <christian@qnib.org>"


RUN yum update -y -x systemd -x systemd-libs
RUN yum install -y wget 

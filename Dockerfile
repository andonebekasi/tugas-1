FROM ubuntu:latest
MAINTAINER Andi

RUN apt-get update
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 openssh-server net-tools iproute2 iputils-ping nano sudo git wget curl  unzip  
COPY index.html /var/www/html/
COPY start.sh  /usr/sbin/
CMD chmod 0755 /usr/sbin/start.sh  && /usr/sbin/start.sh && /usr/sbin/apache2ctl -D FOREGROUND 
#EXPOSE 80


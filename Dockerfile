FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y install ipsec-tools racoon openssh-server

ADD ipsec-tools.conf /etc/ipsec-tools.conf
ADD docker.cinf /etc/racoon/racoon.conf
ADD psk.txt /etc/racoon/psk.txt

#ADD run.sh /run.sh

EXPOSE 22

#CMD ["/run.sh"]
CMD ["bash"]

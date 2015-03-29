FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y install ipsec-tools racoon openssh-server

ADD ipsec-tools.conf /etc/ipsec-tools.conf

ADD run.sh /run.sh

CMD ["/run.sh"]

FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y install ipsec-tools racoon openssh-server rsyslog
RUN mkdir /var/run/racoon

ADD ipsec-tools.conf /etc/ipsec-tools.conf
ADD racoon.conf /etc/racoon/racoon.conf
ADD psk.txt /etc/racoon/psk.txt

ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 501/udp 4501/udp

CMD ["/run.sh"]
#CMD ["bash"]

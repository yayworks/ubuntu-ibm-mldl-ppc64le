FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.

WORKDIR /home/nimbix
ADD ./yb-pwr8-lab.cfg /tmp/yb-pwr8-lab.cfg

RUN /usr/bin/sudo /tmp/yb-pwr8-lab.cfg

ADD motd /etc/motd
ADD help-launch.html /etc/NAE/help-launch.html

EXPOSE 3000

FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./yb-pwr8-lab.cfg /home/nimbix/yb-pwr8-lab.cfg
CMD ["chmod +x /home/nimbix/yb-pwr8-lab.cfg"]


ADD ./NAE/help.html /etc/NAE/help.html

EXPOSE 3000

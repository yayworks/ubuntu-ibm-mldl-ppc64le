FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.

USER root
ADD ./yb-pwr8-lab.cfg /etc/JARVICE/yb-pwr8-lab.cfg
CMD ["chmod +x /etc/JARVICE/yb-pwr8-lab.cfg"]


ADD ./NAE/help.html /etc/NAE/help.html

EXPOSE 3000

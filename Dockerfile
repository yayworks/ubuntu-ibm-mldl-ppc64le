FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./yb-pwr8-lab.cfg /tmp/yb-pwr8-lab.cfg
RUN chmod +x /tmp/yb-pwr8-lab.cfg

USER root
CMD ["/tmp/yb-pwr8-lab.cfg"]

ADD ./NAE/help.html /etc/NAE/help.html

EXPOSE 3000

FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
ADD ./NAE/install.sh /etc/NAE/install.sh

USER root
CMD ["chmod", " +x", "/etc/NAE/install.sh"]
##CMD ["/etc/NAE/install.sh"]

EXPOSE 3000

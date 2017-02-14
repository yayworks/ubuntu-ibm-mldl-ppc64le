FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
ADD ./NAE/install.sh /etc/NAE/install.sh

CMD ["/usr/bin/sudo chmod +x /etc/NAE/install.sh"]

EXPOSE 3000

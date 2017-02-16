FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
ADD ./NAE/install.tar /etc/NAE/install.tar
ADD ./sudoers /etc/sudoers

#WORKDIR /etc/NAE
#CMD ["/usr/bin/tar", "xpf", "/etc/NAE/install.tar"]
#CMD ["sudo", "chmod", " +x", "/etc/NAE/install.sh"]
##CMD ["/etc/NAE/install.sh"]

EXPOSE 3000

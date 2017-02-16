FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
#ADD ./NAE/install.tar /etc/NAE/install.tar
ADD ./NAE/install.tar /usr/local/install.tar
ADD ./sudoers /etc/sudoers

WORKDIR /usr/local
CMD ["/usr/bin/tar", "xpf", "/usr/local/install.tar"]
#CMD ["sudo", "chmod", " +x", "/etc/NAE/install.sh"]
##CMD ["/etc/NAE/install.sh"]

EXPOSE 3000

FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
ADD ./NAE/install.sh /etc/NAE/install.sh
ADD ./sudoers /etc/sudoers

RUN sudo chmod 775 /etc/NAE/install.sh
#CMD ["sudo", "chmod", " +x", "/etc/NAE/install.sh"]
##CMD ["/etc/NAE/install.sh"]

EXPOSE 3000

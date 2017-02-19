FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
#ADD ./NAE/install.tar /etc/NAE/install.tar
#ADD ./NAE/install.tar /usr/local/install.tar
ADD ./sudoers /etc/sudoers
ADD ./etc.tar /etc
#COPY ./yb_nimbix.tar /yb_nimbix.tar


#WORKDIR /
#CMD ["/bin/chmod", "0755", "yb_nimbix.tar"]
#CMD ["/bin/tar", "xpf", "yb_nimbix.tar"]


#WORKDIR /root
#USER nimbix
#CMD ["/usr/bin/sudo", "/usr/local/install.tar/install.sh"]
##CMD ["/etc/NAE/install.sh"]

EXPOSE 22
EXPOSE 80
EXPOSE 3000

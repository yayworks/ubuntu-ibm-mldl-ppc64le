FROM jarvice/ubuntu-ibm-mldl-ppc64le
MAINTAINER YayWorks, Inc.


ADD ./NAE/help.html /etc/NAE/help.html
#ADD ./NAE/install.tar /etc/NAE/install.tar
#ADD ./NAE/install.tar /usr/local/install.tar !creates a directory by name install.tar
ADD ./NAE/install.tar /usr/local
ADD ./sudoers /etc/sudoers
#ADD ./etc.tar /etc.tar
#COPY ./yb_nimbix.tar /yb_nimbix.tar

#COPY ./install.sh /usr/local/install.sh
#RUN chmod +x /usr/local/install.sh
#CMD ["/bin/chmod", "0755", "/usr/local/install.sh"]


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

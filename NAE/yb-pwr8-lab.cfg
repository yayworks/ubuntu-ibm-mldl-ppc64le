#!/bin/bash
###############################################################################
#                                                                             #
# yb-pwr8-lab.cfg - Configuraton of the Power8/GPU Lab for group use          #
#                                                                             #
# Copyright (C) 2016 Yayworks, Inc. - All Rights Reserved                     #
#                                                                             #
# Last revised 02/10/2017                                                     #
#                                                                             #
###############################################################################
        display_usage() { 
        	echo "Run this script as ssh_user from /home/ssh_user directory" 
        	echo “Install nodejs SDK in /usr/local/node”
        	} 
###############################################################################

echo "Pre configuring this system as a Basic Yaybench POWER8/GPU Lab..."

wget https://s3.amazonaws.com/yb-lab-cfg/ibm-6.9.1.0-node-v6.9.1-linux-ppc64le.bin
chmod +x ibm-6.9.1.0-node-v6.9.1-linux-ppc64le.bin

/usr/bin/wget  https://s3.amazonaws.com/yb-lab-cfg/yb_pwr8_user_mgmt_bins.tar
##Untar user management executables into /usr/bin directory
sudo tar xvf yb_pwr8_user_mgmt_bins.tar -C /usr/bin
echo Y |sudo apt-get install tcl
echo Y |sudo apt-get install git

##Remove tarballs
rm *.tar
rm *wget-log*


echo “Installing nodejs SDK…install it in /usr/local/node…pick defaults for rest of questions”
sudo ./ibm-6.9.1.0-node-v6.9.1-linux-ppc64le.bin <<EOF
5

1
/usr/local/node
Y
1



EOF
rm ibm-6.9.1.0-node-v6.9.1-linux-ppc64le.bin
echo “modify $PATH in .bashrc…add the following line to .bashrc before sourcing it”

echo 'export PATH=/usr/local/node/bin:/usr/local/cuda/bin:$PATH' >> .bashrc
echo 'export PATH=/usr/local/node/bin:/usr/local/cuda/bin:$PATH' >> /etc/bash.bashrc
export PATH=/usr/local/node/bin:/usr/local/cuda/bin:$PATH

username="demo"
password="demo"
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		sudo useradd -m -p $pass $username

echo "Configuring this system as a Basic Yaybench POWER8/GPU Lab..."

##Set up login-based access to the system
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

sudo service ssh restart


##Install wetty
cd /home/nimbix

git clone https://github.com/krishnasrinivas/wetty

cd wetty

/usr/local/node/bin/npm install

##Programmatically create self-signed certificates
/usr/bin/yb-gencert yay

##Start wetty
sudo /usr/local/node/bin/node app.js --sslkey yay.key --sslcert yay.pem -p 3000 &

exit 0


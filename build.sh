#!/bin/bash
yum -y install git
git clone git://github.com/PeterJCLaw/compbox-secrets.git /srv/secrets
rm -rf /etc/puppet
git clone --recurse-submodules git://srobo.org/comp/compbox-puppet.git /etc/puppet
puppet apply /etc/puppet/manifests/compbox-dev.pp
setenforce 0
sed -i "s/SELINUX=.*/SELINUX=disabled/" /etc/selinux/config

# TODO: check this somehow!
#wget --no-check-certificate https://localhost -O /dev/null
#if [ $? ]
#then
    echo "Server configured successfully!"
#else
#    echo "Server configuration went wrong :("
#fi

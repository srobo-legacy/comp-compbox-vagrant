#CompBox Vagrant

CompBox is the [Student Robotics](http://studentrobotics.org) copmetition server.
This is a vagrant configuration that will very easily go from scratch to a vagrantbox.

##Setup

1. Install virtualbox
2. Install vagrant (this may require ruby 1.9.3+ including development headers if going via a gem).
2. `git clone https://github.com/PeterJCLaw/compbox-vagrant && cd compbox-vagrant`
3. `vagrant up --provision`
4. Wait about 20 minutes
5. `vagrant ssh` to log into the box. You have passwordless sudo from the
   vagrant user to root. In case you need to know the password it's 'vagrant'


##Some details

The Vagrant basebox upon which this is based is a fedora-17-i386 install with
very little else installed on top of it apart from those needed to make it
talk to vagrant.

This always fetches the latest stuff from puppet when the box
is built, and also does a bunch of other necessary configuration.

The virtual machine is networked into your computer via NAT.
The useful ports on the machine are mapped to 5000 + actual port
(e.g. 5022,5080,5443,13080).
This allows you to ssh in or to view other services on the machine.

Basic module for building a rails development environment.

## Install VirtualBox

VirtualBox is a cross-platform virtualization application. It installs on your existing Intel or AMD-based computers, whether they are running Windows, Mac, Linux or Solaris operating systems.

[http://www.virtualbox.org](http://www.virtualbox.org "VirtualBox")

## Install Vagrant

Vagrant uses VirtualBox to build configurable, lightweight, and portable virtual machines dynamically.

[http://vagrantup.com](http://vagrantup.com "Vagrant")

## Install Git

Install Git and use git clone to get a local copy of the LAMP virtual machine.

[http://git-scm.com/download](http://git-scm.com/download "Git")

## Start Vagrant Virtual Environment

From a terminal run the following:

<pre>
$ git clone git@github.com:jjenkins/rails_vm.git
$ cd rails_vm
$ git submodule init
$ git submodule update
$ vagrant up
</pre>


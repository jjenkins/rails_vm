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

## Setup Ruby
Log in to you virtual machine and use rvm to set the default version of Ruby:

<pre>
$ vagrant ssh
$ rvm --default use ruby-1.9.3-p125
$ ruby -v
</pre>

## Ruby Gems
The RubyGems package management system comes as part of a standard Ruby language installation. Update to the newest version of RubyGems.

<pre>
$ gem update --system
</pre>

## Update Rake
Update to the newest version of Rake before you install Rails.

<pre>
$ gem update rake
$ rake --version
</pre>

## Create a Rails 3.2 Gemset
Create a default Rails 3.2 gemset.

<pre>
rvm ruby-1.9.3-p125@rails32 --create --default
</pre>

## Update Bundler
Update to the newest version of Bundler before you install Rails 3.2.

<pre>
$ gem update bundler
$ bundle --version
</pre>

## Install Rails

<pre>
$ gem install rails
rails -v
</pre>

## Create a Rails App
Create a new rails app and run a quick "smoke test" to see if everything runs.

<pre>
$ cd project
$ rails new testapp
$ cd testapp
$ bundle exec rake -T
</pre>

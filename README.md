# vagrant-centos-lamp

A super-simple Vagrantfile to setup a LAMP stack inside Vagrant 100% automatically.

Requirements
-----------

* Virtualbox
* Vagrant >= 2

Installation:
-------------

Download and install [VirtualBox](http://www.virtualbox.org/)

Download and install [vagrant](http://vagrantup.com/)

Clone this repository

Go to the repository folder and launch the box

    $ cd [repo]
    $ vagrant up --provision


What's inside:
--------------

Installed software:

* Centos 7+ (boxes built using templates from CentOS boxes(https://app.vagrantup.com/centos/boxes/7))
* PHP 7.1
* MariaDB
* Apache
* PhpMyAdmin

Notes
-----


### Accessing your hosts via your local web browser

    http://127.0.0.1:8080

### MariaDB

Logging in can be done with username=root, password=

### phpMyAdmin

phpMyAdmin is available on every domain. For example:

    http://127.0.0.1:8080/phpmyadmin

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
    $ vagrant up


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

In order to access vagrant hosts via your local browser you will need to edit your hosts file (`/private/etc/hosts` in Macs, `c:\Windows\System32\Drivers\etc\hosts` in Windows, `/etc/hosts` in Linux).
All hosts should be mapped to `192.168.33.10`:

    192.168.33.10 local.dev someyourotherhost.dev

### MariaDB

Logging in can be done with username=root, password=

### phpMyAdmin

phpMyAdmin is available on every domain. For example:

    http://127.0.0.1:8080/phpmyadmin

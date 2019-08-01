# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.provider :virtualbox do |vb|
	vb.name = "vm-centos-lamp"
  end
  
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./www", "/var/www/html", owner: "root", group: "root", mount_options: ["dmode=775,fmode=664"]

  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
  
  config.vm.provision "shell", path: "shell_provisioner/vagrant.bootstrap.sh"
  config.vm.provision "shell", inline: "setenforce 0", run: "always"
  config.vm.provision "shell", inline: "systemctl restart httpd.service", run: "always"

end

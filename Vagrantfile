# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|

  config.vm.define "dd-controller" do |ddc|
    config.vm.provider "virtualbox" do |vb|
          vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "1"]
    end
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "dd-controller"
    config.vm.network "private_network", ip: "192.168.50.10"
    config.vm.provision :shell, path: "bootstrap.sh"
  end

  config.vm.define "dd-node1" do |ddn1|
    config.vm.provider "virtualbox" do |vb|
          vb.customize ["modifyvm", :id, "--memory", "4096", "--cpus", "2"]
    end
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "dd-node1"
    config.vm.network "private_network", ip: "192.168.50.11"
    config.vm.provision :shell, path: "bootstrap.sh"
  end

end

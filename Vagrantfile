# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = "ubuntu/xenial64"
NODE_COUNT = 2

Vagrant.configure("2") do |config|

  config.vm.box = BOX_IMAGE

  config.vm.define "master" do |subconfig|
    subconfig.vm.hostname = "master"
    subconfig.vm.network :private_network, ip: "10.0.1.10"
  end

  (1..NODE_COUNT).each do |i|
    config.vm.define "node#{i}" do |subconfig|
      subconfig.vm.hostname = "node#{i}"
      subconfig.vm.network :private_network, ip: "10.0.1.#{i + 10}"
    end
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.synced_folder "data/", "/data"

  config.vm.provision "shell", privileged: false, path: "scripts/startup.sh"

end

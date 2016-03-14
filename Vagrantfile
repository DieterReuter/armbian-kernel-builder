# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  #config.vm.box = "ubuntu/trusty64"
  #config.vm.box = "box-cutter/ubuntu1404"
  config.vm.box = "box-cutter/ubuntu1504"

  config.vm.provision "shell", path: "scripts/provision.sh", privileged: true

  config.vm.provider :virtualbox do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
end

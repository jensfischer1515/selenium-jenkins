# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box       = "ubuntu/trusty64"
  config.vm.host_name = "selenium-jenkins"
  config.vm.network :forwarded_port, guest: 8080, host: 48080, host_ip: "0.0.0.0"

  config.vm.provider :virtualbox do |vb|
    vb.name   = "selenium-jenkins"
    vb.memory = 4096
    vb.cpus   = 4
  end

  config.vm.provision "shell", path: "provision.sh"
end

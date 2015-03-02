# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'

hosts_file = YAML.load_file('./inventory/local_test/hosts_vagrant.yml')
hosts = hosts_file['hosts']

os_family = "precise64"
box_url = "http://files.vagrantup.com/precise64.box"
vm_memory_mb = 512

Vagrant.configure("2") do |config|
  hosts.each do |name, ip|
    config.vm.define name do |machine|
      machine.vm.box = os_family
      machine.vm.box_url = box_url
      machine.vm.hostname = "%s.example.org" % name
      machine.vm.network :private_network, ip: ip
      machine.vm.provider "virtualbox" do |v|
          v.name = name
          v.customize ["modifyvm", :id, "--memory", vm_memory_mb]
      end
    end
  end
end

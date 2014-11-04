# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provision "ansible" do |ansible|

    ansible.groups = {
     "dev_groups" => ["dev"],
     "master_groups" => ["master"],
     "slave_groups" => ["slave"],
     "all_groups" => ["dev", "master", "slave"]
    }

    ansible.extra_vars = {
      ntp_server: "pool.ntp.org",
      nginx: {
        port: 8008,
        workers: 4
      }
    }

    ansible.limit = 'all_groups'
    ansible.playbook = "provision/site.yml"

  end

  config.vm.define "dev" do |dev|
    dev.vm.box = "ubuntu/trusty64"
    dev.vm.network "private_network", ip: "30.1.0.11"
  end

end

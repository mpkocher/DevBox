# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"

  #config.ssh.username = "mkocher"
  #config.ssh.private_key_path = nil
  #config.ssh.private_key_path = "~/.ssh/id_dsa"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # for flask
  config.vm.forward_port 5000, 8000

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  #config.vm.share_folder "v-data", "/vagrant_data", "../data"
  config.vm.share_folder "v-data", "/vagrant_data", "files"

  # Set the number of cpus
  config.vm.customize ["modifyvm", :id, "--cpus", 4]

  # Set the memory
  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file precise64.pp in the manifests_path directory.
  #
  # An example Puppet manifest to provision the message of the day:
  #
  # # group { "puppet":
  # #   ensure => "present",
  # # }
  # #
  # # File { owner => 0, group => 0, mode => 0644 }
  # #
  # # file { '/etc/motd':
  # #   content => "Welcome to your Vagrant-built virtual machine!
  # #               Managed by Puppet.\n"
  # # }
  #
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    #puppet.manifest_file  = "precise64.pp"
    puppet.manifest_file  = "defaults.pp"
    puppet.options="--verbose --debug"
  end
end

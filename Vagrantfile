# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :ps56node1 do |node1_config|
	node1_config.vm.box = 'centos6'
	node1_config.vm.box_url = 'https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box' 
	node1_config.vm.hostname = 'ps56node1'
	node1_config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1024", "--cpuexecutioncap", "60"] 
	end
	#node1_config.vm.network :private_network, ip: "192.168.80.6"
	#node1_config.vm.network  :forwarded_port, guest:22, host:2323
	node1_config.vm.provision :puppet do |node1_puppet|
		node1_puppet.options = '--verbose'
		node1_puppet.module_path= "modules"
	end
   end

end

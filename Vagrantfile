Vagrant.configure("2") do |config|
	config.vm.box = "precise64"
	config.vm.network :forwarded_port, guest: 80, host: 8080

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.module_path = "puppet/modules"
		puppet.manifest_file = "init.pp"
	end

end

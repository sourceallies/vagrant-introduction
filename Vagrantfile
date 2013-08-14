Vagrant.configure("2") do |config|
	config.vm.box = "dummy"
	config.vm.network :forwarded_port, guest: 80, host: 8080

	config.vm.provider :aws do |aws, override|

    		aws.ami = "ami-7747d01e"
		aws.keypair_name = "my-keypair"

    		override.ssh.username = "ubuntu"
		override.ssh.private_key_path = "~/.ssh/id_rsa"
	end

	config.vm.provision :shell, :path => "shell/install_puppet.sh"

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.module_path = "puppet/modules"
		puppet.manifest_file = "init.pp"
	end
end

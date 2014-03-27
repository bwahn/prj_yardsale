Vagrant.configure("1") do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    config.vm.network :hostonly, "192.168.100.10" 
    #config.vm.network :forwarded_port, guest: 9000, host: 8500, auto_correct: true 
    config.vm.share_folder "app", "/app", "/Volumes/ERIC_DATA/prj_yardsale/app"
end

Vagrant.configure("2") do |config|
    config.vm.provider :virtualbox do |vb|
        vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end
    config.vm.provision :shell, :path => "node-bootstrap.sh"
end

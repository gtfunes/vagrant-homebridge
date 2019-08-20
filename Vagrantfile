Vagrant.configure("2") do |config|
  unless Vagrant.has_plugin?("vagrant-disksize")
    raise "vagrant-disksize is not installed! Run 'vagrant plugin install vagrant-disksize' first."
  end

  config.vm.network "public_network", :mac => "080027B712F8", bridge: ["en0: Wi-Fi (Wireless)", "en0", "bridge0"]
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", run: "once", path: "provision.sh"
  config.disksize.size = '4GB'

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |vb|
    vb.memory = 1536
    vb.cpus = 1
  end
end

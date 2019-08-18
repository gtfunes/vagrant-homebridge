Vagrant.configure("2") do |config|
  config.vm.network "public_network", :mac => "080027B712F8", bridge: ["en0: Wi-Fi (Wireless)", "en0", "bridge0"]
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", run: "once", path: "provision.sh"

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |p|
    p.memory = 1536
    p.cpus = 1
  end
end

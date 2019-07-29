$script = <<-SCRIPT
apt-get update
apt-get install git docker docker-compose -y
systemctl enable docker && systemctl start docker
git clone https://github.com/gtfunes/vagrant-homebridge.git
chown -R vagrant:vagrant vagrant-homebridge
cd vagrant-homebridge
cp .env.example .env
usermod -aG docker $(whoami)
docker-compose up -d
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.network "public_network"
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "shell", inline: $script
end

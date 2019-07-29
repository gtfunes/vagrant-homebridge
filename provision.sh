#!/bin/bash

apt-get update
apt-get install git docker docker-compose -y
systemctl enable docker && systemctl start docker
git clone https://github.com/gtfunes/vagrant-homebridge.git
chown -R vagrant:vagrant vagrant-homebridge
cd vagrant-homebridge
cp .env.example .env
usermod -aG docker $(whoami)
docker-compose up -d

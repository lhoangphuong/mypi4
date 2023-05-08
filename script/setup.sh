#!/bin/bash

sudo apt update
sudo apt full-upgrade
sudo apt install cmake -y
sudo apt install unattended-upgrades -y
echo 'APT::Periodic::Update-Package-Lists "1";' | sudo tee /etc/apt/apt.conf.d/20auto-upgrades > /dev/null
echo 'APT::Periodic::Unattended-Upgrade "1";' | sudo tee -a /etc/apt/apt.conf.d/20auto-upgrades > /dev/null

sudo curl -fsSL -o "/boot/config.txt" "https://raw.githubusercontent.com/lhoangphuong/mypi4/main/boot/config.txt"

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
sudo usermod -aG docker $USER
newgrp docker

sudo apt install cockpit -y

sudo apt install zsh -y
#chsh -s $(which zsh)
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

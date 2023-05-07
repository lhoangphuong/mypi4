#!/bin/bash

sudo apt update
sudo apt full-upgrade

sudo curl -fsSL -o "/boot/config.txt" "https://raw.githubusercontent.com/lhoangphuong/mypi4/main/boot/config.txt"

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
sudo usermod -aG docker $USER
newgrp docker

sudo apt install cockpit
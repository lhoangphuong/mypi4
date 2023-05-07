#!/bin/bash

sudo apt update
sudo apt full-upgrade

sudo curl -fsSL -o "/boot/config.txt" "https://raw.githubusercontent.com/lhoangphuong/mypi4/main/boot/config.txt"
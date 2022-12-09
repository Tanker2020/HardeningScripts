#!/bin/bash

#firewall ubuntu

sudo ufw default allow outgoing
sudo ufw default deny incoming

sudo ufw enable

sudo systemctl status ufw.service

sudo apt-update 

sudo service ssh restart
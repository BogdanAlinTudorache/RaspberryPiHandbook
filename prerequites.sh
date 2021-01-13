#!/bin/bash

# Get the system up to date
sudo apt update;
sudo apt upgrade;

echo "UPGRADE & UPDATE are COMPLETE!"

# Install locate
sudo apt install mlocate;

echo "LOCATE install COMPLETE!"

# Install Synapse - Powerful app launcher, just like Spotlight Search from Mac
sudo apt-get install synapse;

echo "Synapse install COMPLETE!"

# Install openssh
sudo apt install openssh-server;

echo "OpenSSH install COMPLETE!"

# Install htop
sudo snap install htop;

echo "HTOP install COMPLETE!"

# Install net-tools package. This includes arp, ifconfig, netstat, rarp, nameif and route.
sudo apt install net-tools;

echo "NET-TOOLS install COMPLETE!"

### Linux terminal tweaks
echo export HISTTIMEFORMAT=\"%m/%d/%y %T \" >> ~/.bash_profile;
echo export PS1='$(whoami): ${PWD/*\//}/ :' >> ~/.bash_profile;
echo alias ip='ifconfig | grep '\''inet'\'' | grep -Fv 127.0.0.1 |  awk '\''FNR==5 {print $2 }'\'''  >> /.bashrc;

echo "LINUX tweaks INSTALLED!"

# Install python3 package manager
sudo apt install python3-pip;

echo "PYTHON PACKER MANAGER instalation COMPLETE!"

### Install python tweaks

# Install pymysql
python3 -m pip install PyMySQL;

echo "PYTHON MYSQL instalation COMPLETE!"

# Install pretty errors
python3 -m pip install pretty_errors;

echo "PYTHON PRETTY ERRORS instalation COMPLETE!"

# Install VsCode for Raspberry Pi arm architecture
sudo -s 
. <( wget -O - https://code.headmelted.com/installers/apt.sh ); 


echo "All packages have been installed: /nUpdate&Upgrade /nLocate /nSynapse /nhtop /nNet-Tools /nLinux Tweaks /nPython Package Manager /nPyMySQL /nPretty Errors /n VsCode"

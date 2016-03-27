#!/bin/bash
cd ~
######################################
## softwares to install
######################################

## apt
	APT='build-essential '
APT=$APT'curl '
APT=$APT'vim '
APT=$APT'git '
APT=$APT'deluge '
APT=$APT'zsh '
APT=$APT'xchat '
APT=$APT'nmap '
APT=$APT'sshfs '
APT=$APT'atom'

######################################
## add repos and apt-get installs
######################################
# atom
sudo add-apt-repository ppa:webupd8team/atom
# install all the stuff
sudo apt-get update
sudo apt-get install -y $APT

######################################
## install oh-my-zsh
######################################
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

######################################
# hub standalone
######################################
sudo gem install hub --no-ri --no-rdoc
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub

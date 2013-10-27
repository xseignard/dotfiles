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
APT=$APT'chromium-browser '
APT=$APT'nodejs '
APT=$APT'sublime-text-installer '
APT=$APT'zsh '
APT=$APT'xchat '
APT=$APT'rubygems '
APT=$APT'rabbitvcs-nautilus '
APT=$APT'arduino '
APT=$APT'libjpeg62-dev '
APT=$APT'mongodb-10gen '

## npm
     NPM='bower '
NPM=$NPM'karma '
NPM=$NPM'jshint '
NPM=$NPM'mocha '
NPM=$NPM'istanbul '
NPM=$NPM'grunt-cli '
NPM=$NPM'hexo '

## gem
     GEM='hub '
GEM=$GEM'sass '  

######################################
## add repos and apt-get installs
######################################
# node.js
sudo add-apt-repository -y ppa:chris-lea/node.js
# sublime text 3
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
sudo echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
# install all the stuff
sudo apt-get update
sudo apt-get install -y $APT

######################################
## install oh-my-zsh
######################################
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

######################################
## install node tools globaly
######################################
sudo npm install $NPM -g

######################################
## install gem tools
######################################
sudo gem install $GEM
# hub standalone
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub

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

## npm
     NPM='bower '
NPM=$NPM'karma '
NPM=$NPM'jshint '
NPM=$NPM'mocha '
NPM=$NPM'istanbul '
NPM=$NPM'hexo '

## gem
     GEM='hub '   

######################################
## add repos and apt-get installs
######################################
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
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

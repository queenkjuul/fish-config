#!/bin/bash

# queenkjuul fish setup script for ubuntu

# so my fish setup isn't super complicated, but I am madly in love with it
# plus, I sometimes make changes that I post to github
# but most importantly, I want the little bunny to tell say "trans rights" in rainbow colors

# the point here is not terribly complicated, but as I do not yet know how to use
# more complicated vm-setup stuff (ansible, cloud-init, chef, etc) I am just making a 
# super simple bash script to run the first few commands I always run on a fresh
# Ubuntu instance. 

# a previous version of this script was way too ambitious, for no good reason

# live long and prosper, loves

packagelist=fish-config/ubuntu/pkglist.txt

sudo apt-get update
sudo apt-get -y upgrade
sudo gem install cowsay
git clone https://github.com/queenkjuul/fish-config
# this is magic from stackexchange
xargs -a <(awk '! /^ *(#|$)/' "$packagelist") -r -- sudo apt-get -y install
sudo cp -u fish-config/signbunny.rb $(dirname $(dirname $(which cowsay)))/gems/cowsay*/lib/cowsay/character/
cp -ur fish-config/ubuntu/fish/ ~/.config/
chsh -s /usr/bin/fish



# TODO: incorporate this magical dotfiles workflow from
# https://news.ycombinator.com/item?id=11071754
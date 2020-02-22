#!/bin/bash

sudo apt-get -y upgrade
# this is magic from stackexchange
xargs -a <(awk '! /^ *(#|$)/' "$packagelist") -r -- sudo apt-get -y install
sudo gem install cowsay
sudo cp -u fish-config/signbunny.rb $(dirname $(dirname $(which cowsay)))/gems/cowsay*/lib/cowsay/character/
cp -ur fish-config/ubuntu/fish/ ~/.config/
chsh -s /usr/bin/fish



# TODO: incorporate this magical dotfiles workflow from
# https://news.ycombinator.com/item?id=11071754
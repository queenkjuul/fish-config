#!/bin/bash

# queenkjuul fish setup script for ubuntu
# this should, in theory, get a new VPS ubuntu instance all up to date, and 
# running everything I want. Designed around my first digitalocean droplets, 
# I am not sure if this will need to change for other VPS providers as I have
# never used any other VPS provider
#
# The goal is to have a script that I will run as root hosted on my github
# that will quickly and easily get a new VPS set up with my personal 
# quality-of-life stuff. 
#
# for details, see README.md

# VARIABLES

ARGA=0
ARGF=1
ARGV=1
ARGS=1
ARGU=1

# FUNCTIONS

new_user () {
    if [[ $1 =~ ^[a-z_] ]] ; then
        echo "setting up new non-sudo user $1"
        adduser $1
    else
        echo "$1 is not a valid unix username. Skipping."
    fi
}

new_suser () {
    new_user $1
    gpasswd -a $1 sudo
}

update_server () {
    apt-get update
    apt-get -y upgrade 
    apt-get -y install $(cat pkglist)
}

get_sshcode () {
    echo "Not yet configured for VSCode"
}

push_fish () {
    # install gems (cowsay)
    # install signbunny.rb
    # install fish config files
    gem install cowsay
}
# EXECUTION

# check for root, as we need it
# this breaks the script on msys, where I am testing, so hold up
# i guess this is what WSL is for, huh. lol

if ! [ $(id -u) = 0 ]; then
   echo "ah ah ah, you didn't say the magic word!"
   echo "(this script will only work as root)"
   exit 1
fi

# process options
for i in $@; do
    if echo $i | grep -qoc ^-.*a -; then 
        echo "we got an a!!"
        ARGA=1
        while getopts ":a:" opt; do
            case $opt in
                a)
                    echo "-a overrides all other flags"
                    NUSER=$2
                    echo "user to set up is $NUSER"
                    ;;
                /?)
                    echo "-a set, ignoring flag $OPTARG"
                    ;;
                :)
                    echo "-a expects to be passed a name for a new user"
                    exit 1
                    ;;
            esac
        done
    elif echo $i | grep -qoc ^-.*A -; then
        #echo "we got an A!!"
        ARGA=1
        ARGAA=1
        while getopts ":A:" opt; do
            case $opt in
                A)
                    echo "-A overrides all other flags (except -a)"
                    SUSER=$2
                    ;;
                /?)
                    echo "-A set, ignoring flag $OPTARG"
                    ;;
                :)
                    echo "-A expects to be passed a name for a new user"
                    exit 1
                    ;;
            esac
        done
    fi
done
if [ $ARGA ]; then
    while getopts ":n:N:uUfvsp" opt; do
        case $opt in
            f)
                ARGF=0
                ;;
            n)
                echo "Creating new user $OPTARG"
                new_user $OPTARG
                ;;
            N)
                echo "Creating new sudo user $OPTARG"
                new_suser $OPTARG
                ;;
            u)
                ARGU=0
                ;;
            v)
                ARGV=0
                ;;
            s)
                ARGV=0
                ;;
            p)
                ARGP=0
                ;;
            \?)
                echo "Invalid option: $OPTARG" >&2
                ;;
        esac
    done
fi



# QueenKJuul's Ubuntu Setup Script

This script is designed to set up my preferred Ubuntu fish configuration, with options allowing it to be a full VPS setup in one-line kind of deal.

My plan for usage is:

    curl -L https://github.com/queenkjuul/fish-config/ubuntu/setup.sh | /bin/bash [OPTIONS]

with OPTIONS being:

- `-n USERNAME` set up user $USERNAME 
- `-N USERNAME` set up user $USERNAME and add her to sudo
- `-u` update the server 
- `-f` download my fish config files from github and install them, updating bashrc as well, and install prerequisites (also runs `-p`)
- `-v` install sshcode because the normal VSCode SSH never seems to work for me ¯\\\_(ツ)_/¯
- `-s` copy my public SSH keys from github to the VPS (and, if `-q`, also copy them to my qkj user)
- `-p` install my custom list of packages (forced with `-f`)
- `-a USERNAME` all of the above, nosudo (`-nufvsp USERNAME`)
- `-A USERNAME` all of the above, sudo (`-Nufbsp USERNAME`)
- `-n` and `-N` can be used together, and multiple times, for example:
    `-n USER1 -N USER2 -n USER3`
    will create non-sudo users USER1 and USER3, plus sudo user USER2

## TODO

- [ ] well, so far, techincally, all of it
- [ ] change `-u` to allow you to pass a username to it and decide whether sudo should be enabled or not
- [ ] allow arbitrary packages to be passed with `-p` on the command line
# QueenKJuul's Ubuntu Setup Script

This script is designed to set up my preferred Ubuntu fish configuration, with options allowing it to be a full VPS setup in one-line kind of deal.

My plan for usage is:

    curl -L https://github.com/queenkjuul/fish-config/ubuntu.sh | /bin/bash [OPTIONS]

with OPTIONS being:

- `-u` set up user qkj and add her to sudo
- `-U` update the server and enable `unattended-upgrades`  
- `-f` download my fish config files from github and install them, updating bashrc as well, and install prerequisites (also runs `-p`)
- `-v` install sshcode because the normal VSCode SSH never seems to work for me ¯\\\_(ツ)_/¯
- `-s` copy my public SSH keys from github to the VPS (and, if `-q`, also copy them to my qkj user)
- `-p` install my custom list of packages (forced with `-f`)
- `-a` all of the above (`-uUfvsp`)

## TODO

- [ ] well, so far, techincally, all of it
- [ ] change `-u` to allow you to pass a username to it and decide whether sudo should be enabled or not
- [ ] allow arbitrary packages to be passed with `-p` on the command line
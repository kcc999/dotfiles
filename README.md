# Linux config
## This is a repository that contains my linux config so it's easy for me to install it on a new system.

To run it just open run.sh as root.

It only works on Debian based systems, as the install scripts use the apt package manager (i do not use any other kind of distros so i didn't bother about that)

The installation scripts automatically install for you i3,neovim,zsh,clang,feh,compton,cmus and ranger.

To install the config run the following inside the repo directory:

```
sudo python3 scripts/init.py 
```

To copy your current config into this directory if you plan to use it to backup your stuff:

```
python3 sync.py
```

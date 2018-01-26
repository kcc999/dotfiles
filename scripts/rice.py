import os

# package location and name lists 
dir_list = ['/usr/bin/nvim', '/usr/bin/zsh', '/usr/bin/i3']
pkgs = ['neovim', 'zsh', 'i3']

#dotfiles
files_list = ['../zsh/.zshrc/', '../.i3/', '../.selected_editor]
cfg_pkgs


## to install every package if it isn't installed
def install():
    for (pkg_path, pkg) in zip(dir_list, pkgs):
        if not os.path.exists(pkg_path):
            os.system('apt-get install ' + pkg)
        else:
            print('Package ' + pkg + ' is already installed')

## copy config files
def sync_files():
    for dot_files in files_list:
        os.system('cp -R ' + dot_files + " " + "~/")
        print("Config copied")


##for nvim, as it is not located in the home dir as the rest 
def sync_nvim():
    os.system('cp -R ../nvim/vim.init ~/.config/nvim/')






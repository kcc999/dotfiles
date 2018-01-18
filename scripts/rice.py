import os

# package location and name lists 
dir_list = ['/usr/bin/nvim', '/usr/bin/zsh', '/usr/bin/i3']
pkgs = ['neovim', 'zsh', 'i3']

#dotfiles
files_list = ['../nvim/.vimrc/', '../zsh/.zshrc/', '../i3/']



def install():
    for (pkg_path, pkg) in zip(dir_list, pkgs):
        if not os.path.exists(pkg_path):
            os.system('apt-get install' + pkg)
        else:
            print('Package ' + pkg + ' is already installed')

def sync_files():
    for(dot_files, pkg) in zip(files_list, pkgs):
        os.system('cp -R ' + dot_files + " " + "~/")
        print(pkgs + " config copied")







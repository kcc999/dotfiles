import os

dot_files = ['~/.i3/config','~/.config/nvim/init.vim','~/.zshrc']
config_copy = ['i3/config','nvim/init.vim','zsh/.zshrc']


def sync():
    for origin, copy in zip(dot_files,config_copy):
        os.system("cp " + origin + " " + copy)


sync()

import os

package_list = ['git', 'chromium', 'clang', 'feh', 'compton', 'cmus', 'ranger']

def packages_install():
    for pkg in package_list:
        os.system('apt-get install ' + pkg)



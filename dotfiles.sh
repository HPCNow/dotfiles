#!/bin/bash
#                __  ______  _______   __              __
#               / / / / __ \/ ____/ | / /___ _      __/ /
#              / /_/ / /_/ / /   /  |/ / __ \ | /| / / /
#             / __  / ____/ /___/ /|  / /_/ / |/ |/ /_/
#            /_/ /_/_/    \____/_/ |_/\____/|__/|__(_)
#
#      dotfiles developed and maintained by HPCNow! staff

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
cp .alias ~/.alias
cp -pr .byobu ~/
echo "test -s ~/.alias && . ~/.alias || true" >> ~/.bashrc
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
git config --global alias.unstage 'reset HEAD --'

#!/bin/bash
sudo apt-get -yy update
sudo apt-get -yy upgrade
sudo apt-get -yy install htop vim vim-gtk3 htop git wget tee zsh

# install dotfiles
mkdir ~/Projects
git clone https://github.com/johnnoel/dotfiles.git ~/Projects/dotfiles
cd ~/Projects/dotfiles
git submodule init
git submodule update
cd ~
ln -s ~/Projects/dotfiles/.vim
ln -s ~/Projects/dotfiles/.vimrc
ln -s ~/Projects/dotfiles/.gvimrc
ln -s ~/Projects/dotfiles/.gitconfig
ln -s ~/Projects/dotfiles/.gitignore

mkdir -p ~/.fonts
wget --quiet -P ~/.fonts/ "https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo for Powerline.ttf"

# repos
sudo add-apt-repository -yy ppa:ondrej/php
sudo add-apt-repository -yy ppa:nginx/stable
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee --append /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb https://deb.nodesource.com/node_9.x `lsb_release -cs` main" | sudo tee --append /etc/apt/sources.list.d/nodesource.list
wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -

sudo apt-get update
sudo apt-get install postgresql-10 nginx nodejs \
    php7.2-cli php7.2-fpm php7.2-json php7.2-intl php7.2-pgsql php7.2-sqlite3 \
    php7.2-curl php7.2-gd php7.2-mbstring php7.2-xml php7.2-zip \
    redis-server

# zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

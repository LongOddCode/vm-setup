#!/bin/sh

set x
set e

# basic requirements
sudo apt upgrade
sudo apt update

# zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# fuse
sudo apt install fuse
sudo modprobe fuse
sudo groupadd fuse
user="$(whoami)"
sudo usermod -a -G fuse $user

# autojump
sudo apt install autojump

# node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | zsh
nvm install node

# neovim
sudo apt install gperf luajit luarocks libuv1-dev libluajit-5.1-dev libunibilium-dev libmsgpack-dev libtermkey-dev libvterm-dev libutf8proc-dev
sudo mv nvim.appimage /usr/local/bin/nvim

wget https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
chmod u+x nvim.appimage
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# golang
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /home/long/.gvm/scripts/gvm
gvm install go1.5 -B
gvm use go1.5 [--default]

# python
curl https://pyenv.run | zsh
pyenv uninstall 3.8.5

# typescript
npm install -g typescript

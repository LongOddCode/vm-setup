#!/bin/sh

set x
set e

# basic requirements
sudo apt upgrade
sudo apt update
sudo apt install gperf luajit luarocks libuv1-dev libluajit-5.1-dev libunibilium-dev libmsgpack-dev libtermkey-dev libvterm-dev libutf8proc-dev ctags
sudo apt install  make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo LANG=en_US.utf-8 >> .zshrc
echo LC_ALL=en_US.utf-8 >> .zshrc

# autojump
sudo apt install autojump

# node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | zsh
nvm install node

# neovim
sudo apt install neovim
sudo apt install python-neovim
sudo apt install python3-neovim

# golang
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /home/long/.gvm/scripts/gvm
gvm install go1.5 -B
gvm use go1.5 --default

# python
curl https://pyenv.run | zsh
pyenv install 3.8.5
pyenv global 3.8.5


# typescript
npm install -g typescript#

# nginx
sudo apt install nginx

# mysql
sudo apt install mysql-server
sudo mysql_secure_installation

# dotnet
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-3.1
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-3.1


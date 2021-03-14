#!/bin/sh

sudo apt-get -y install git
sudo apt-get -y install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

cp /data/zshrc.zsh-template ~/.zshrc

sudo chsh -s /bin/zsh vagrant

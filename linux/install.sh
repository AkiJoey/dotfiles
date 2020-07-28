#!/bin/bash

apt update
apt install -y vim emacs curl wget net-tools tmux htop subversion

apt install -y git
git config --global user.name 'AkiJoey'
git config --global user.email 'akijoey1010635951@gmail.com'

apt install -y zsh
git clone git://github.com/ohmyzsh/oh-my-zsh $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' $HOME/.zshrc

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions --depth 1
git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting --depth 1
sed -i 's/plugins=(git/& zsh-autosuggestions zsh-syntax-highlighting/' $HOME/.zshrc

chsh -s zsh

apt install -y emacs
svn export https://github.com/AkiJoey/dotfiles/tree/master/linux/.emacs.d $HOME/.emacs.d

apt install -y openssh-server
echo root:000822 | chpasswd
mkdir /var/run/sshd

sed -i -e 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' -e 's/#ClientAliveInterval 0/ClientAliveInterval 30/' -e 's/#ClientAliveCountMax 3/ClientAliveCountMax 86400/' /etc/ssh/sshd_config
sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd
echo 'export VISIBLE=now' >> /etc/profile

wget -P /etc -N https://github.com/akijoey/dotfiles/raw/master/linux/motd

apt install -y screenfetch
echo 'screenfetch' >> $HOME/.zshrc

curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt install -y gcc g++ gdb cmake python3 ruby-full default-jdk nodejs

echo 'Install successed.'

exit

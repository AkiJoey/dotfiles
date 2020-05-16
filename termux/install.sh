#!/data/data/com.termux/files/usr/bin/bash

apt update
apt install -y vim curl wget openssh git zsh

git clone git://github.com/ohmyzsh/oh-my-zsh $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' $HOME/.zshrc

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions --depth 1
git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting --depth 1
sed -i 's/plugins=(git/& zsh-autosuggestions zsh-syntax-highlighting/' $HOME/.zshrc

chsh -s zsh

wget -P $HOME/.termux https://github.com/AkiJoey/TerminalConfig/raw/master/termux/.termux/colors.properties
wget -P $HOME/.termux https://github.com/AkiJoey/TerminalConfig/raw/master/termux/.termux/font.ttf

wget -P $PREFIX/etc -N https://github.com/AkiJoey/TerminalConfig/raw/master/linux/motd

apt install -y screenfetch
echo 'screenfetch' >> $HOME/.zshrc

termux-setup-storage

echo 'Install successed.'
echo 'Please restart Termux.'

exit

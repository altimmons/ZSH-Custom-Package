#! /bin/zsh
# This is a log of the actions that occured, more than a script.

.zshenv
.zshrc
.zprofile
.zlogin


#  mkdir .zshconfig
#  cd .zshconfig
	# git init .
git submodule add https://github.com/zsh-users/antigen.git antigen

# add pl10k
git submodule add --depth=1 https://github.com/romkatv/powerlevel10k.git  p10k

ZSH_CUSTOM=$HOME/.zshconfig
export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$ZSH_CUSTOM/config

	# touch .zshrc
	# git add .zshrc
ln -s ./.zshrc ~/.zshrc

mkdir config

#++
sh -c "$(curl -fsSL https://getmic.ro)"

#+++
 ln -s ./micro /usr/local/bin/

#++
 apt install git python3 pip ruby ruby-dev xsel xclip pkg-config libncursesw5-dev libreadline-dev go 

git submodule add https://github.com/jarun/nnn.git nnn
pushd nnn
#+++
make O_NERD=1 strip install
#https://github.com/jarun/nnn/wiki/Advanced-use-cases#file-icons
export 
#++


#add advcp and advmove #add alias in aliases file
sudo ln -s $ZSH_CUSTOM/advcpmv/advcp $HOME/.local/bin/cpg
sudo ln -s $ZSH_CUSTOM/advcpmv/advmv $HOME/.local/bin/mvg
echo alias cp 'cpg -g' >> ~/.bashrc
echo alias mv 'mvg -g' >> ~/.bashrc


# install ccat
cd  $ZSH_CUSTOM
wget https://github.com/owenthereal/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz -o ./ccat
sudo ln -s $ZSH_CUSTOM/ccat/ccat $HOME/.local/bin/ccat

sudo cp $ZSH_CUSTOM/ccat/_ccat /usr/share

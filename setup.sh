#! /bin/zsh
# This is a log of the actions that occured, more than a script.



#  mkdir .zshconfig
#  cd .zshconfig
	# git init .
git submodule add https://github.com/zsh-users/antigen.git antigen

# add pl10k
git submodule add --depth=1 https://github.com/romkatv/powerlevel10k.git  p10k



	# touch .zshrc
	# git add .zshrc
ln -s ./.zshrc ~/.zshrc


sudo sh -c "$(curl -fsSL https://getmic.ro)"
sudo ln -s ./micro /usr/local/bin/

sudo apt install python3 pip ruby ruby-dev xsel xclip pkg-config libncursesw5-dev libreadline-dev

git submodule add https://github.com/jarun/nnn.git

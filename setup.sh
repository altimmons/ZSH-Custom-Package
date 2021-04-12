

mkdir .zshconfig
cd .zshconfig
git init . 
git submodule add https://github.com/zsh-users/antigen.git antigen
touch .zshrc
git add .zshrc
ln -s ./.zshrc ~/.zshrc

#! /bin/zsh
# This is a log of the actions that occured, more than a script.

.zshenv
.zshrc
.zprofile
.zlogin


#======================Dependencies Install
#++
 apt install git python3 pip ruby ruby-dev xsel xclip pkg-config libncursesw5-dev libreadline-dev libgnutls28-dev uuid-dev build-essential

#this actually a great spot for heredoc
#([a-z\d-]+)  -> # |$1 | required by                                   | \n

# | Module|
# |git              | required by    everything                     | 
# |python3          | required by   bpytop, other general use       | 
# |pip              | required by   bpytop                          | 
# |ruby             | required by   colorls                         | 
# |ruby-dev         | required by   colorls                         | 
# |xsel             | required by                                   | 
# |xclip            | required by                                   | 
# |pkg-config       | required by  taskwarrior or timewarrior       | 
# |libncursesw5-dev | required by  taskwarrior                      | 
# |libreadline-dev  | required by                                   | 
# |~go              | required by  nothing now                      | 
# |libgnutls28-dev  | required by                                   | 
# |uuid-dev         | required by                                   | 
# |build-essential  | required by   all the things that need building| 

$com=function($str){return '';};

function com($str){return '';};

# https://stackoverflow.com/questions/5679813/need-to-put-code-comments-inside-a-heredoc
:<<BLKCMT
function heredocComment($comment)
{
    return "";
}

{$heredocComment("
    txt
   ")}
{$comment('okay this comment was intended to explain the code below but it
       is showing up on the web page html sent to the browser')}

BLKCMT

#\t#-dep for \n\t$1\n  ([a-z\d-]+) 
 apt install <<-EODEPENDENCY_LIST
	#-dep for  Everything
	git
	#-dep for 
	python3
	#-dep for 
	pip
	#-dep for 
	ruby
	#-dep for 
	ruby-dev
	#-dep for 
	xsel
	#-dep for 
	xclip
	#-dep for 
	pkg-config
	#-dep for 
	libncursesw5-dev
	#-dep for 
	libreadline-dev
	#-dep for 
	go
	#-dep for 
	libgnutls28-dev
	#-dep for 
	uuid-dev
	#-dep for 
	build-essential
EODEPENDENCY_LIST


# May have other dependencies- I know I fought with it in the past.
pip3 install bpytop

#requires elevation & ruby & ruby-dev
 gem install colorls -- --use-system-libraries

ZSH_CUSTOM=$HOME/.zshconfig

ZSH_CUS_ZSH_USERS=$ZSH_CUSTOM_PLUGINS/zsh-users


#  mkdir .zshconfig
#  cd .zshconfig
	# git init .
git submodule add https://github.com/zsh-users/antigen.git antigen
git submodule add --depth=1 --branch master https://github.com/ohmyzsh/ohmyzsh.git ohmyzsh
git submodule add --depth=1 https://github.com/junegunn/fzf.git ./fzf
./fzf/install
git submodule add https://github.com/bigH/auto-sized-fzf.git $ZSH_CUSTOM/.fzf-autosize
# add pl10k
git submodule add --depth=1 https://github.com/romkatv/powerlevel10k.git  p10k
###############

## Add zshusers plugin
#make sure we are where we expect
cd $ZSH_CUSTOM

#todo move mpg and cpg to .assets
#add fonts to .assets
mkdir .assets
mkdir .plugins && cd .plugins 
ZSH_CUSTOM_PLUGINS=$ZSH_CUSTOM/.plugins/

mkdir zsh-users && cd zsh-users

ZSH_CUS_ZSH_USERS=$ZSH_CUSTOM_PLUGINS/zsh-users

git submodule add --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git
git submodule add --depth=1  https://github.com/zsh-users/zsh-completions.git  
git submodule add --depth=1 https://github.com/zsh-users/zsh-history-substring-search.git
git submodule add --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git




git submodule add https://github.com/GothenburgBitFactory/taskwarrior.git taskwarrior
 cd taskwarrior
 git checkout master                # Master is the stable branch.
 cmake -DCMAKE_BUILD_TYPE=release . # 'release' for performance.
 make                               # Just build it.
sudo make install
cd ..
#################

# git submodule update --init --recursive   # Pull in dependencies

curl -L -O https://github.com/GothenburgBitFactory/timewarrior/releases/download/v1.4.2/timew-1.4.2.tar.gz
tar xzf timew-1.4.2.tar.gz
mv timew-1.4.2 timewarrior/
cd timewarrior
cmake -DCMAKE_BUILD_TYPE=Release .
make
sudo make install
make clean
cd..

############
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


git submodule add -branch=origin https://github.com/microsoft/linux-vm-tools.git

cd $ZSH_CUSTOM/.assets
 wget https://github.com/sharkdp/bat/releases/download/v0.18.0/bat-musl_0.18.0_amd64.deb
  sudo dpkg -i bat-musl_0.18.0_amd64.deb
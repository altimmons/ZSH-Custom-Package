#! /bin/zsh
# Andy's Custom ZSH Install
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
DEBUG=true
export TERM=xterm #make sure the keys work right
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export LANG=en_US.UTF-8

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# colored GCC warnings and errors

#todo check if everything is setup ? exprted var?
#this does eomething similar.  downloads if not existent.
#[[ ! -d "$HOME/.antigen" ]] && git clone https://github.com/zsh-users/antigen.git "$HOME/.antigen"
#source "$HOME/.antigen/antigen.zsh"

#add these extra paths.
export PATH=usr/local/bin:$HOME/.local/bin:$HOME/bin:$PATH

#todo make sure this works if parent changes.




#ZSH_CUSTOM = $ZSH_CONFIG

## Use the local copy rather than downloading it.

ANTIGEN_BUNDLES=$ZSH_CUSTOM/config/antigen
ZSH_CONFIG_OHMYZSH=$ZSH_CUSTOM/ohmyzsh
#'assumes that the ANTIGEN_DEFAULT_REPO_URL is set to the oh-my-zsh repo or a fork of that repo.'
ANTIGEN_DEFAULT_REPO_URL=$ZSH_CONFIG_OHMYZSH/oh-my-zsh.git
ZSH_CONFIG_OHMYZSH_PLUGINS=$ZSH_CONFIG_OHMYZSH/plugins
ZSH_CUSTOM=$HOME/.zshconfig
ZSH_CUSTOM_PLUGINS=$ZSH_CUSTOM/.plugins/
ZSH_CUS_ZSH_USERS=$ZSH_CUSTOM_PLUGINS/zsh-users
ZSH_CUST_CONFIG=$ZSH_CUSTOM/config
#ZSH may need to point to ohmyzsh dir
ZSH=$ZSH_CUSTOM

export BAT_CONFIG_PATH=$ZSH_CUST_CONFIG/bat_config
export XDG_CONFIG_HOME=$ZSH_CUST_CONFIG

source /home/andy/.zshconfig/p10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$ZSH_CUSTOM/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$ZSH_CUSTOM/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
source ~/.zshconfig/antigen/antigen.zsh
# 3 steps:
# Using Antigen in your .zshrc consists of three major parts.

    # source the previously downloaded antigen.zsh file
        # use the antigen functions to load desired stuff into your ZSH
            # Commit your configuration by invoking antigen apply
# source $ZSH_CUSTOM/p10k/powerline10k.zsh-theme
#source ~/.zshconfig/p10k/powerline10k.zsh-theme


# 1 -source antigen
# source $ZSH_CUSTOM/antigen/antigen.sh

if $DEBUG; then
  cat<<-EXPORT_LIST
    ANTIGEN_BUNDLES=$ZSH_CUSTOM/config/antigen
    ZSH_CONFIG_OHMYZSH=$ZSH_CUSTOM/ohmyzsh
    ANTIGEN_DEFAULT_REPO_URL=$ZSH_CONFIG_OHMYZSH/oh-my-zsh.git
    ZSH_CONFIG_OHMYZSH_PLUGINS=$ZSH_CONFIG_OHMYZSH/plugins
    ZSH_CUSTOM=$HOME/.zshconfig
    ZSH_CUSTOM_PLUGINS=$ZSH_CUSTOM/.plugins/
    ZSH_CUS_ZSH_USERS=$ZSH_CUSTOM_PLUGINS/zsh-users
    #ZSH may need to point to ohmyzsh dir
    ZSH=$ZSH_CUSTOM
EXPORT_LIST
fi



if $DEBUG; then cat <<< "1"; fi;
antigen bundle $ZSH_CONFIG_OHMYZSH/plugins/<<-BUNDLES
  git
  editor
  history
  prompt
  utility
  completions
  thefuck
BUNDLES

if $DEBUG; then cat <<< "2" ; fi;
for d in $ZSH_CUS_ZSH_USERS/*; do
  antigen bundle  ${d} --no-local-clone
  if $DEBUG; then echo load...$d; fi;
  # if [[$debug]]
done

antigen bundle $ZSH_CUSTOM/.plugins/zsh-users/zsh-users/zsh-completions
antigen bundle $ZSH_CUSTOM/.plugins/zsh-users/zsh-users/zsh-syntax-highlighting
antigen bundle $ZSH_CUSTOM/.plugins/zsh-users/zsh-users/zsh-history-substring-search
antigen bundle $ZSH_CUSTOM/.plugins/zsh-users/zs





:<<UNUSED_PLUGINS
antigen bundle $ZSH_CUSTOM/.plugins/zsh-users/<<-EOBUNDLES
zsh-users/zsh-completions
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search
EOBUNDLES


antigen bundle git

function antigen_params($param){
  antigen bundle --loc=$param  --no-local-clone --url=$ZSH_CONFIG_OHMYZSH_PLUGINS
}
# antigen_params<<-BUNDLES
#   git
#   editor
#   history
#   prompt
#   utility
#   completions
# BUNDLES

antigen_params(editor)
antigen_params(history)
antigen_params(prompt)
antigen_params(utility)
antigen-bundle https://github.com/zsh-users/zsh-history-substring-search
# Specify completions we want before the completion module




UNUSED_PLUGINS
# Specify plugins we want

# antigen-use oh-my-zsh



#2 - Load functions.


# antigen theme  romkatv/powerlevel10k
antigen apply
### NNN CUSTOMIZASTION  https://github.com/jarun/nnn/wiki/Usage#installation
#
# NNN_OPTS="cEnrx"	binary options to nnn
# NNN_OPENER="/path/to/custom/opener"	custom opener (see plugin nuke)
# NNN_BMS='d:~/Documents;D:~/Docs archive/' 1	key-bookmark pairs
# NNN_PLUG='o:fzopen;m:nmount;x:_chmod +x $nnn' 1	key-plugin (or cmd) pairs
# NNN_ARCHIVE="\\.(7z|bz2|gz|tar|tgz|zip)$" 2	archives [default: bzip2, (g)zip, tar]
# NNN_COLORS='1234' (/'#0a1b2c3d'/'#0a1b2c3d;1234') 3 5	context colors [default: '4444' (blue)]
# NNN_FCOLORS='c1e2272e006033f7c6d6abc4' 4444file-specific colors
# NNN_SSHFS='sshfs -o reconnect,idmap=user' 5	custom SSHFS cmd
# NNN_RCLONE='rclone mount --read-only' 5	custom rclone cmd
# NNN_TRASH=n (n=1: trash-cli, n=2: gio trash)	use desktop Trash [default: delete]
# NNN_SEL='/tmp/.sel'	custom selection file
# NNN_FIFO='/tmp/nnn.fifo' 6	FIFO to write hovered file path to
# NNN_LOCKER='saidar -c'	terminal locker
# NNN_MCLICK='^R' 7zkey emulated by middle mouse click
# NO_COLOR=1 8	disable ANSI color output

:<<DISABLE_THIS_FOR_NOW
#
nnn_cd()
{
	    if ! [ -z "$NNN_PIPE" ]; then
	            printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
	                fi
	                }

	                trap nnn_cd EXIT
# }
#
#
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"


# # WSL yank support
# let s:clip = '/mnt/c/Windows/System32/clip.exe'  # change this path according to your mount point
# if executable(s:clip)
    # augroup WSLYank
            # autocmd!
                    # autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
                        # augroup END
                        # endif


# Use ~~ as the trigger sequence instead of the default **
#export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
export FZF_COMPLETION_OPTS='--border --info=inline'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
fd --type d --hidden --follow --exclude ".git" . "$1"
}

# (EXPERIMENTAL) Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
local command=$1
shift

case "$command" in
cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
ssh)          fzf "$@" --preview 'dig {}' ;;
*)            fzf "$@" ;;
esac
}

DISABLE_THIS_FOR_NOW

setup_color() {
	# Only use colors if connected to a terminal
	if [ -t 1 ]; then
		RED=$(printf '\033[31m')
		GREEN=$(printf '\033[32m')
		YELLOW=$(printf '\033[33m')
		BLUE=$(printf '\033[34m')
		BOLD=$(printf '\033[1m')
		RESET=$(printf '\033[m')
	fi
}


fmt_underline(){
    printf '\033[4m%s\033[24\n' "$*"
}

fmt_code(){
    printf '`\033[38;5;247m%s%s`\n' "$*" "$RESET"

}

fmt_error() {
  printf '%sError: %s%s\n' "$BOLD$RED" "$*" "$RESET" >&2
}
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



[ -f $ZSH_CUSTOM/.fzf.zsh ] && source $ZSH_CUSTOM/.fzf.zsh

source $ZSH_CUSTOM/aliases

# Sane Limits for fzg

source $ZSH_CUSTOM/.fzf-autosize/auto-sized-fzf.sh
#FZF_DEFAULT_OPTS="$(fzf_sizer_preview_window_settings)"
#export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'

sleep 2

clear
$ZSH_CUSTOM/.assets/now

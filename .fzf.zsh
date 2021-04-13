# Setup fzf
# ---------
if [[ ! "$PATH" == */home/andy/.zshconfig/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/andy/.zshconfig/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/andy/.zshconfig/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/andy/.zshconfig/fzf/shell/key-bindings.zsh"

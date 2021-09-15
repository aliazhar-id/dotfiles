# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Command completion
autoload -Uz compinit promptinit
compinit
promptinit

# for save history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Ignore duplicate history
setopt histignorealldups

# For autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# ================ START ALIAS ================
alias cls=clear
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lal='ll -a'
alias mocp='xfce4-terminal -e mocp --geometry=79x15 -I gnome-music --dynamic-title-mode=replace'
alias neofetch='echo;neofetch'
alias dw=aria2c
alias subla='subl -a'
# ================ END ALIAS ================

# bold the prompt input
zle_highlight=(default:bold,fg=white)

# =============== START BINDKEY ===============
# Shift + Up
bindkey ';2A' reset-prompt
# Shift + Down
bindkey ';2B' reset-prompt
# Shift + Right
bindkey ';2C' reset-prompt
# Shift + Left
bindkey ';2D' reset-prompt
# Ctrl + Up
bindkey ';5A' reset-prompt
# Ctrl + Down
bindkey ';5B' reset-prompt
# Ctrl + Right
bindkey ';5C' forward-word
# Ctrl + Left
bindkey ';5D' backward-word
# Delete
bindkey '^[[3~' delete-char
# PageUp
bindkey '^[[5~' beginning-of-buffer-or-history
# PageDown
bindkey '^[[6~' end-of-buffer-or-history
# Shift + Tab
bindkey '^[[Z' reverse-menu-complete
# Insert
# bindkey '^[[2~' overwrite-mode
# Home
bindkey '^[[H' beginning-of-line
# End
bindkey '^[[F' end-of-line
# ================ END BINDKEY ================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

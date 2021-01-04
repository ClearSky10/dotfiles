#!/bin/zsh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

setopt HIST_IGNORE_ALL_DUPS
setopt AUTO_CD

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

alias ls="ls --color"
alias p="python"
alias r="ranger"
alias vi="nvim"
alias we="source /home/kei/work/env/bin/activate"
alias c="bc -l"
alias pm="aft-mtp-mount ~/documents/phone"
alias pu="fusermount -u ~/documents/phone"
alias diary=">/dev/null"
alias "vd"="nvim -d"
alias t="tmux"

export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
export LESS="--RAW-CONTROL-CHARS"

export VISUAL=foot nvim
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1

source ~/.p10k.zsh

if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

autoload -Uz compinit colors
compinit
colors

setopt nocheckjobs correct completealiases autocd cdablevars auto_menu complete_in_word

unsetopt BG_NICE menu_complete

[[ -e "$HOME/.sh/alias.zsh" ]] && source $HOME/.sh/alias.zsh
[[ -e "$HOME/.sh/export.zsh" ]] && source $HOME/.sh/export.zsh
[[ -e "$HOME/.sh/style.zsh" ]] && source $HOME/.sh/style.zsh

HISTFILE=~/.sh/.history
SAVEHIST=128
HISTSIZE=128

# prompt {{{1
ZSHFG=`expr $RANDOM / 15`
precmd () {
 
  psvar=()
  LANG=en_US.UTF-8
 
  if [ $ZSHFG -ge 15 ]
  then
    ZSHFG=0
  fi
 
  ZSHFG=`expr $ZSHFG + 1`
 
  PROMPT="%{%B%F{$ZSHFG}%}─── %b%f"
  RPS1="%B%F{$ZSHFG}%~%b%f"
}
#}}}
# extra {{{1
eval $( dircolors -b $HOME/LS_COLORS )
export LS_COLORS
#}}}

# vim: ft=dircolors:fdm=marker:noet:sw=8

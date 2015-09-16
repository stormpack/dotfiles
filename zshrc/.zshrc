autoload -U compinit && compinit
autoload -U colors && colors

setopt nocheckjobs correct completealiases autocd cdablevars auto_menu complete_in_word

unsetopt BG_NICE menu_complete

[[ -e "$HOME/.sh/alias.zsh" ]] && source $HOME/.sh/alias.zsh
[[ -e "$HOME/.sh/export.zsh" ]] && source $HOME/.sh/export.zsh
[[ -e "$HOME/.sh/style.zsh" ]] && source $HOME/.sh/style.zsh
[[ -e "$HOME/.sh/prompt.zsh" ]] && source $HOME/.sh/prompt.zsh

HISTFILE=~/.sh/.history
SAVEHIST=128
HISTSIZE=128

eval $( dircolors -b $HOME/LS_COLORS )
export LS_COLORS

# vim: ft=dircolors:fdm=marker:noet:sw=8

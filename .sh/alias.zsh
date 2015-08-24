alias :q='exit'
alias v='vim'
alias HIST='echo > ~/.sh/.history'
alias -s {mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov,mp3,m3u,pls,webm,mpv}='mplayer'
alias -s {jpg,png,gif}='feh'
alias -s {txt,c,cpp,sh,h,conf,java,py,go,tex,vim,zsh}='vim'
alias fonts='mkfontdir ~/.fonts;mkfontscale ~/.fonts;xset +fp ~/.fonts;xset fp rehash;fc-cache;fc-cache -fv'

## crux ##
alias prt-get='sudo prt-get'
alias pkgrm='sudo pkgrm'
alias ports='sudo ports'

## root ##
alias dhcpcd='sudo /sbin/dhcpcd'
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown -h now'

# colored output
alias ls='ls -hF --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# configuration
conf(){
	case $1 in
	zshrc)       vim ~/.zshrc && source ~/.zshrc ;;
	xinit)     vim ~/.xinitrc ;;
	xres)      vim ~/.Xresources && xrdb ~/.Xresources ;;
	tmux)      vim ~/.tmux.conf ;;
	vim)       vim ~/.vimrc ;;
	sxhkd)     vim ~/.config/sxhkd/sxhkdrc ;;
	ncmpcpp)   vim ~/.ncmpcpp/config ;;
	weechat)   vim ~/.weechat/weechat.conf ;;
	esac
}

# directory
up(){
    lv=${1:-1}
    while test $lv -gt 0; do
        builtin cd ..
        lv=$((lv - 1))
    done
    pwd
}

# gh
push(){
	git init;
	git add .;
	git commit -m "GH";
	git push;
	git status;
}

alias gitad='git add'
alias gitcl='git clone'
alias gitco='git commit -m'
alias gitdi='git diff'
alias gitig='vim .gitignore'
alias gitin='git init'
alias gitlo='git log'
alias gitpl='git pull'
alias gitpu='git push -u origin master'
alias gitrm='git rm'
alias gitst='git status'

# radio
radio(){
 case $1 in
 1) mplayer -nolirc -playlist http://www.radiotunes.com/mp3/urbanjamz.pls ;;
 2) mplayer -nolirc -playlist http://www.radiotunes.com/mp3/classicrap.pls ;;
 3) mplayer -nolirc -playlist http://www.radiotunes.com/mp3/urbanpophits.pls ;;
 4) mplayer -nolirc -playlist http://www.radiotunes.com/mp3/90srnb.pls ;;
 5) mplayer -nolirc -playlist http://www.radiotunes.com/mp3/romantic.pls ;;
 esac
}

# (u)mount
mnt(){
 case $1 in
 b) sudo mount /dev/sdb ~/tmp ;;
 c) sudo mount /dev/sdc ~/tmp ;;
 x) sudo umount ~/tmp ;;
 esac
}

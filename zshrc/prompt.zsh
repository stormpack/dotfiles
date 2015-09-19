a=`expr $RANDOM / 14`

precmd () {
 
psvar=()
LANG=en_US.UTF-8
 
if [ $a -ge 14 ]
  then
    a=0
fi

a=`expr $a + 1`

PROMPT="%{%B%F{$BLACK}%}─%{%F{$a}%}──%{%B%F{$BLACK}%}─ %b%f"
RPS1="%B%F{$a}%~%b%f"
}

# vim: ft=dircolors:fdm=marker:noet:sw=8

#
# Multicolored ZSH Git Prompt
#

a=`expr $RANDOM / 15`
b=`expr $RANDOM / 10`
c=`expr $RANDOM / 15`
d=`expr $RANDOM / 8`
e=`expr $RANDOM / 8`

function g {
local DIRTY="%{%B%F{$d}%}"
local CLEAN="%{%B%F{$e}%}"
local UNMERGED="%{%B%F{$b}%}"
local RESET="%{$terminfo[sgr0]%}"
git rev-parse --git-dir >& /dev/null
if [[ $? == 0 ]]
  then
  echo -n ""
if [[ `git ls-files -u >& /dev/null` == '' ]]
  then
  git diff --quiet >& /dev/null
if [[ $? == 1 ]]
  then
  echo -n $DIRTY
else
  git diff --cached --quiet >& /dev/null
if [[ $? == 1 ]]
  then
  echo -n $DIRTY
else
  echo -n $CLEAN
   fi
 fi
else
  echo -n $UNMERGED
fi
  echo -n `git branch | grep '* ' | sed 's/..//'`
  echo -n $RESET
  echo -n " "
fi
}

precmd () {
 
psvar=()
LANG=en_US.UTF-8
 
if [ $a -ge 15 ]
  then
    a=0
fi

if [ $b -ge 10 ]
  then
    b=0
fi
 
if [ $c -ge 15 ]
  then
    c=0
fi

if [ $d -ge 10 ]
  then
    d=0
fi

if [ $e -ge 15 ]
  then
    e=0
fi

a=`expr $a + 1`
b=`expr $b + 2`
c=`expr $c + 3`
d=`expr $d + 2`
e=`expr $d + 2`

PROMPT="$(g)%{%B%F{$a}%}%n%{%F{$b}%}@%{%B%F{$c}%}%m %b%f"
RPS1="%B%F{$a}%~%b%f"
}

# vim: ft=dircolors:fdm=marker:noet:sw=8

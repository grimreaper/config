alias -s txt=$EDITOR
alias -s cpp=$EDITOR
#alias -s awk=awk
#alias -s nawk=nawk
# cd to a file should take you to the dir that contains the file
# courtesy of Artur Penttinen <artur@xxxxxxxxxxx>
function cd () {
  if [[ -f $1 ]]; then
    builtin cd $1:h
  else
    builtin cd $1
  fi
}

function pushd () {
	if [[ $# -eq 0 ]]
	then
		builtin cd;
	else
		if [[ -f $1 ]]
		then
			builtin pushd $1:h;
		else
			builtin pushd $1;
		fi
	fi
}

#mkdir should cd as well
function mcd () {
	if [ $# -eq 1 ]
	then
		mkdir $1;
		cd $1;
	else
		mkdir $@;
	fi
}
setopt correct_all

alias man='nocorrect man'
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias touch='nocorrect touch'
alias ln='nocorrect ln'
alias mkdir='nocorrect mkdir'

alias -g N="&>/dev/null"
alias -g N1="1>/dev/null"
alias -g N2="2>/dev/null"
alias -g DN="/dev/null"

alias cd\?="dirs";
alias back='cd "$OLDPWD";pwd'
h () { history 0 | grep "$1" }

# Enable ls colors
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
fi

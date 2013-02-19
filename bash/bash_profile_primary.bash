confpath=~/.conf/zsh/

#Set some useful variables
HOST="$(hostname)"

source $confpath/inSSH.func
source $confpath/exists.func
source $confpath/env.sh
source $confpath/aliases.sh
source $confpath/eval_spin.func
	
export PATH=/usr/local/sbin:/usr/sbin:/sbin:$PATH:${HOME}/bin
export ANSI_BOLD="$(tput smso)"
export ANSI_BOLD_EXIT="$(tput rmso)"
export ANSI_COLOR_DEFAULT="$(tput sgr0)"
export ANSI_COLOR_BLACK="$(tput setaf 0)"
export ANSI_COLOR_RED="$(tput setaf 1)"
export ANSI_COLOR_GREEN="$(tput setaf 2)"
export ANSI_COLOR_YELLOW="$(tput setaf 3)"
export ANSI_COLOR_BLUE="$(tput setaf 4)"
export ANSI_COLOR_MAGENTA="$(tput setaf 5)"
export ANSI_COLOR_CYAN="$(tput setaf 6)"
export ANSI_COLOR_LIGHT_GRAY="$(tput setaf 7)"
export ANSI_COLOR_DARK_GRAY="$(tput bold)"
export ANSI_COLOR_LIGHT_RED="$ANSI_BOLD $ANSI_COLOR_RED $ANSI_UNBOLD"
export ANSI_COLOR_LIGHT_GREEN="$ANSI_BOLD $ANSI_COLOR_GREEN $ANSI_UNBOLD"
export ANSI_COLOR_LIGHT_YELLOW="$ANSI_BOLD $ANSI_COLOR_YELLOW $ANSI_UNBOLD"
export ANSI_COLOR_LIGHT_BLUE="$ANSI_BOLD $ANSI_COLOR_BLUE $ANSI_UNBOLD"
export ANSI_COLOR_LIGHT_MAGENTA="$ANSI_BOLD $ANSI_COLOR_MAGENTA $ANSI_UNBOLD"
export ANSI_COLOR_LIGHT_CYAN="$ANSI_BOLD $ANSI_COLOR_CYAN $ANSI_UNBOLD"
export ANSI_COLOR_WHITE="$ANSI_BOLD $(tput setaf 7) $ANSI_UNBOLD"
export ANSI_BGCOLOR_BLACK="$(tput setab 0)"
export ANSI_BGCOLOR_RED="$(tput setab 1)"
export ANSI_BGCOLOR_GREEN="$(tput setab 2)"
export ANSI_BGCOLOR_YELLOW="$(tput setab 3)"
export ANSI_BGCOLOR_BLUE="$(tput setab 4)"
export ANSI_BGCOLOR_MAGENTA="$(tput setab 5)"
export ANSI_BGCOLOR_CYAN="$(tput setab 6)"
export ANSI_BGCOLOR_LIGHT_GRAY="$(tput setab 7)"
export ANSI_RESET="\e[m"
export ANSI_UNDERLINE="$(tput smul)"
export ANSI_UNDERLINE_EXIT="$(tput rmul)"

#some settings
PS1_USER="${ANSI_COLOR_BLUE}\u";              #my username
if __inSSH
then
      PS1_HOST="${ANSI_COLOR_LIGHT_BLUE}\h${ANSI_COLOR_DEFAULT}"
else
      PS1_HOST="${ANSI_COLOR_BLUE}\h${ANSI_COLOR_DEFAULT}";              #hostname
fi
PS1_WD="${ANSI_COLOR_MAGENTA}\w";     #current working directory
PS1_PROMPT="\$";                          #EOF

export PS1="[\! $PS1_USER@$PS1_HOST $PS1_WD ${ANSI_COLOR_DEFAULT}]$PS1_PROMPT"




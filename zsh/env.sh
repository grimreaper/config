export BLOCKSIZE=K;
export EDITOR=vim;
export PAGER=less;

export PATH="/usr/local/llvm-svn:$PATH:$HOME/bin";
export FORTUNE_PATH="/usr/share/games/fortune:/usr/local/share/games/fortune:$HOME/.fortune";

# Required for macports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

#top default arguments
export TOP="-IC";
#grep default options
export GREP_OPTIONS="--color"

__exists firefox && export BROWSER="/usr/local/bin/firefox";
__exists firefox3 && export BROWSER="/usr/local/bin/firefox3";

#export LSCOLORS="Gxfxcxdxbxegedabagacad"

export XZ_OPT="-9eM 90%";
export GZIP="-9";

#export TZ="EST";
export CHARSET="UTF-8";

#Yes GTK - I really do want you to listen to my config file
export GTK_IM_MODULE="xim";

#Specific to ZSH - but this is an envrioment variable so meh
export CORRECT_IGNORE="_*";

## Git specific things
if [ "x$USER" = "xeadler" -o "x$USER" = "xeadler1" -o "x$USER" = "xeitan" ]
then
	GIT_AUTHOR_NAME="eitan";
	GIT_AUTHOR_EMAIL="lists@eitanadler.com";
else
	GIT_AUTHOR_NAME="$USER";
fi

export MANCOLOR="yes"; # view color data
export MANWIDTH="tty"; # view man pages in full width

export TINDY="/usr/local/tinderbox/";



export ENV=~/.shrc;

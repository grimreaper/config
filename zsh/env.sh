export BLOCKSIZE=K;
export EDITOR=nano;
export PAGER=less;

export PATH="/usr/local/llvm-svn:$PATH:$HOME/bin";
export FORTUNE_PATH="/usr/share/games/fortune:/home/eitan/.fortune";

#top default arguments
export TOP="-I";
#grep default options
export GREP_OPTIONS="--color"

__exists firefox && export BROWSER="/usr/local/bin/firefox";
__exists firefox3 && export BROWSER="/usr/local/bin/firefox3";

export LSCOLORS="Gxfxcxdxbxegedabagacad"

export CVSROOT="anoncvs@anoncvs1.FreeBSD.org:/home/ncvs";

export XZ_OPT="-9eM 90%";
export GZIP="-9";

export TZ="EST";
export CHARSET="UTF-8";

#Yes GTK - I really do want you to listen to my config file
export GTK_IM_MODULE="xim";
alias mv="mv -i";
alias cp="cp -i";
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -FG'

if [ $(uname -s ) = "FreeBSD" ]
then
	alias rm="rm -I";
	alias less="less -R";
fi
alias cEterm="\Eterm -C -T 'Console Eterm' -f'red'";
#alias nvlc="nvlc --volume 1024";
#alias vlc="vlc_create_sock";
alias python2="python -tt3";
alias python="python3.1"
alias noflash="pkill -3 -l npviewer.bin";
alias noflash_9="noflash|sed "s/3/9/"|sh -x 2>&1|sed 's/\+ //'";
alias switch-background="pkill idesk && idesk &";
alias youtube-dl="youtube-dl -t";
alias startx="ssh-agent startx -audit 4 -nolisten tcp";
alias sgrep='grep --exclude "*svn*" -I';
alias srcloc="whereis -qs";
alias portmaster="portmaster -m'-DNO_DEPENDS'";
alias su="su -l"
__exists proxychains && alias pc="proxychains";
alias shareThisDir="python -m http.server 8000";
alias lls="ls -lao";
__exists firefox && alias firefox="firefox -no-remote";
__exists firefox3 && alias firefox="firefox3 -no-remote";

alias cd="pushd";
alias p="pushd";
alias b="popd";

__exists idprio && alias verynice="nice nice idprio 31";

__exists calendar && [ -f /usr/share/calendar/calendar.freebsd ] &&
	alias bsdcal="calendar -f /usr/share/calendar/calendar.freebsd";
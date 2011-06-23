#! /bin/sh -x
self=~/.conf;
begon="$self/.begon";

#Test ln. only link if the second argument doesn't exist
tln () {
	[ -e "$2" ] || (ln -s "$1" "$2" && echo begon \"$2\" >> $begon )
}

#Home test ln. Like tln but assumes everything is relative to $HOME && $self
htln () {
	tln "$self/$1" "$HOME/$2"
}

htln zsh/zshrc .zshrc
htln zsh/zlogout .zlogout
htln nano/USE_RC .nanorc
htln nano .mynano
htln X/XCompose .XCompose
htln X/xinitrc .xinitrc
htln X/Xmodmap .xmodmap
htln X/Xdefaults .Xdefaults
#htln X/xsession .xsession
htln mercurial/hgrc .hgrc
[ -d $HOME/.mplayer ] || mkdir $HOME/.mplayer
htln mplayer/config .mplayer/config
htln mplayer/mencoder.conf .mplayer/mencoder.conf
htln icewm .icewm
htln cvs/cvsrc .cvsrc
htln xpdf/xpdfrc .xpdfrc
htln screen/screenrc .screenrc
htln vim/vimrc .vimrc
#htln git/gitconfig .gitconfig
htln gdb/gdbinit .gdbinit
[ -d ~/.config ] || mkdir ~/.config 
[ -d ~/.config/awesome ] || mkdir ~/.config/awesome
htln awesome/rc.lua .config/awesome/rc.lua
[ -d ~/.config/openbox ] || mkdir ~/.config/openbox
htln openbox/menu.xml .config/openbox/menu.xml
htln openbox/rc.xml .config/openbox/rc.xml
__exists git && git/install.sh	
htln bash/bash_profile_primary.bash .bashrc
htln bash/bash_profile.sh .bash_profile
htln tmux/tmux.conf .tmux.conf
find $HOME/.mozilla -mindepth 3 -maxdepth 3 -type d -name chrome -exec sh -c "[ -e {}/userChrome.css ] || ln -s $self/firefox/userChrome.css {}/userChrome.css" \;
find $HOME/.mozilla -mindepth 3 -maxdepth 4 -type l -name userChrome.css -exec sh -c "echo begon \"{}/userChrome.css\" >> $begon" \;
sort $begon | uniq  > $begon-temp && mv $begon-temp $begon;

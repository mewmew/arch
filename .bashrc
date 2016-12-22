#
# ~/.bashrc
#

export EDITOR="geany -i"
export PATH=/home/u/go/bin:/home/u/goget/bin:/home/u/Desktop/go/bin:$PATH
export PATH=/home/u/.gem/ruby/2.3.0/bin:$PATH
export GOPATH=/home/u/goget:/home/u/Desktop/go
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

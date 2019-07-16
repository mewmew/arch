#
# ~/.bashrc
#

export EDITOR='geany -i'
export PATH=${HOME}/goget/bin:$PATH
export PATH=${HOME}/Desktop/go/bin:$PATH
export PATH=${HOME}/go1.13/bin:$PATH
export PATH=${HOME}/.gem/ruby/2.5.0/bin:$PATH
export PATH=${HOME}/.local/bin:$PATH
export PATH=${HOME}/Desktop/MiniZincIDE-2.1.5-bundle-linux-x86_64:$PATH
export GOPATH=${HOME}/goget:${HOME}/Desktop/go
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export FREETYPE_PROPERTIES='truetype:interpreter-version=40'
export TM_DIR="/home/u/goget/src/github.com/inspirer/textmapper"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Binary grep.
alias bgrep='grep -obUaP'

# ref: http://www.projectatomic.io/blog/2015/08/why-we-dont-let-non-root-users-run-docker-in-centos-fedora-or-rhel/
alias docker='sudo /usr/bin/docker'

# Textmapper.
alias textmapper='${TM_DIR}/tm-tool/libs/textmapper.sh'

# Calendar start on monday.
alias cal='cal -m'

# Colored grep.
alias grep='grep --color=auto'

# Colored ls, (-F) append '/' to directories, (-v) natural sort of numbers.
alias ls='lsd --color=auto -F'

# stdin to clipboard.
alias xin='xclip -in -selection clip'
alias xout='xclip -out'

# Muscle memory is hard to forget
alias ack='sift'

PS1='[\u@\h \W]\$ '

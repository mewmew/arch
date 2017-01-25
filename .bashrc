#
# ~/.bashrc
#

export EDITOR='geany -i'
export PATH=/home/u/go/bin:$PATH
export PATH=/home/u/goget/bin:$PATH
export PATH=/home/u/Desktop/go/bin:$PATH
export PATH=/home/u/.gem/ruby/2.3.0/bin:$PATH
export GOPATH=/home/u/goget:/home/u/Desktop/go
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export FREETYPE_PROPERTIES='truetype:interpreter-version=40'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ref: http://www.projectatomic.io/blog/2015/08/why-we-dont-let-non-root-users-run-docker-in-centos-fedora-or-rhel/
alias docker="sudo /usr/bin/docker"

# ref: http://www.projectatomic.io/blog/2015/08/why-we-dont-let-non-root-users-run-docker-in-centos-fedora-or-rhel/
alias docker='sudo /usr/bin/docker'

# Calendar start on monday.
alias cal='cal -m'

# Colored grep.
alias grep='grep --color=auto'

# Colored ls, (-F) append '/' to directories, (-X) sort alphabetically, (-v)
# natural sort of numbers.
alias ls='ls --color=auto -F -X -v'

# stdin to clipboard.
alias xin='xclip -in -selection clip'
alias xout='xclip -out'

# Muscle memory is hard to forget
alias ack='sift'

PS1='[\u@\h \W]\$ '

#
# ~/.bashrc
#

export EDITOR='geany -i'
export PATH=${HOME}/goget/bin:$PATH
export PATH=${HOME}/.local/bin:$PATH
export GOPATH=${HOME}/goget
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export FREETYPE_PROPERTIES='truetype:interpreter-version=40'
export QT_QPA_PLATFORMTHEME=qt5ct

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Fuzzy search.
#
#    [CTRL] + 't'   list files+folders in current directory
#    [CTRL] + 'r'   search history of shell comamnds
#    [ALT] + 'c'    fuzzy change directory
source /usr/share/fzf/key-bindings.bash

# Binary grep.
alias bgrep='grep -obUaP'

# Start Wayland (muscle memory)
alias startx='startw'

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

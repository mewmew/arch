# Autojump using https://github.com/gsamokovarov/jump
status --is-interactive; and source (jump shell fish | psub)

set -x EDITOR 'geany -i'
set -x PATH /home/u/goget/bin $PATH
set -x PATH /home/u/.local/bin $PATH
set -x GOPATH /home/u/goget
set -x _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
set -x FREETYPE_PROPERTIES 'truetype:interpreter-version=40'
set -x QT_QPA_PLATFORMTHEME qt5ct

function fish_user_key_bindings
    # Alt+l : print the file contents of the current folder.
    bind \el 'echo; and ls; and commandline -f repaint'

    # Alt+a : print the file (hidden included) contents of the current folder.
    bind \ea 'echo; and ls -a; and commandline -f repaint'

    # Alt+. : insert last argument from the last command.
    bind \e. 'history-token-search-backward'

    # Fuzzy search.
    #
    #    [CTRL] + 't'   list files+folders in current directory
    #    [CTRL] + 'r'   search history of shell comamnds
    #    [ALT] + 'c'    fuzzy change directory
    fzf_key_bindings
end

set fish_greeting ""

# Git simple log, ref: https://stackoverflow.com/questions/1838873/visualizing-branch-topology-in-git#comment74542661_29180226
alias gslog='git log --graph --simplify-by-decoration --pretty=format:"%C(yellow)%h%C(white)%d %C(bold black)%ar %C(reset)%n" --all'

# Binary grep.
alias bgrep='grep -obUaP'

# Start Wayland (muscle memory)
alias startx='startw'

# Calendar start on monday.
alias cal='cal -m'

# Better diff.
alias diff='grc diff -u'

# Colorized df
alias df='grc df'

# Colored grep.
alias grep='grep --color=auto'

# Colored ls, (-F) append '/' to directories, (-v) natural sort of numbers.
alias ls='lsd --color=auto -F'

# Muscle memory is hard to forget
alias ack='sift'

set -x GTK_THEME 'Adwaita:dark'

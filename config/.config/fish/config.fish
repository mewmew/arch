set fish_plugins autojump
source /etc/profile.d/autojump.fish
set AUTOJUMP_IGNORE_CASE = 1

set -x EDITOR 'geany -i'
set -x PATH /home/u/goget/bin $PATH
set -x PATH /home/u/Desktop/go/bin $PATH
set -x PATH /home/u/go1.13/bin $PATH
set -x PATH /home/u/.gem/ruby/2.6.0/bin $PATH
set -x PATH /home/u/.local/bin $PATH
set -x PATH /home/u/.cargo/bin $PATH
set -x PATH /home/u/Desktop/MiniZincIDE-2.1.5-bundle-linux-x86_64 $PATH
set -x GOPATH /home/u/goget:/home/u/Desktop/go
set -x _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
set -x FREETYPE_PROPERTIES 'truetype:interpreter-version=40'
set -x TM_DIR '/home/u/goget/src/github.com/inspirer/textmapper'

function fish_user_key_bindings
    # Alt+l : print the file contents of the current folder.
    bind \el 'echo; and ls; and commandline -f repaint'

    # Alt+a : print the file (hidden included) contents of the current folder.
    bind \ea 'echo; and ls -a; and commandline -f repaint'

    # Alt+. : insert last argument from the last command.
    bind \e. 'history-token-search-backward'

    # Alt+o : pipe to xin
    bind \eo 'commandline -a "| xin;"'

    # Fuzzy search.
    #
    #    [CTRL] + 't'   list files+folders in current directory
    #    [CTRL] + 'r'   search history of shell comamnds
    #    [ALT] + 'c'    fuzzy change directory
    fzf_key_bindings
end

set fish_greeting ""

# Aliases
alias ...='cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ...... 'cd ../../../../..'

# Binary grep.
alias bgrep='grep -obUaP'

# ref: http://www.projectatomic.io/blog/2015/08/why-we-dont-let-non-root-users-run-docker-in-centos-fedora-or-rhel/
alias docker='sudo /usr/bin/docker'

# Textmapper.
#alias textmapper='(TM_DIR)/tm-tool/libs/textmapper.sh'

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

# stdin to clipboard.
alias xin='xclip -in -selection clip'
alias xout='xclip -out'

# Cleaner output
alias time='time -p'

# Muscle memory is hard to forget
alias ack='sift'

# Go path autocomplete.
#function complete_gopath $cmd -d "Completions for the gopath"
#    set cmd "$GOPATH/src/"
#    # Remove the real path to "." (i.e. $PWD) from cmd if we're in it
#    # so it doesn't get printed in the descriptions
#    set -l ind
#    if begin; set ind (contains -i -- $PWD $cmd)
#              and contains -- "." $cmd
#              end
#              set -e cmd[$ind]
#    end
#    for i in $cmd
#        set -l desc
#        # Don't show description for current directory
#        # and replace $HOME with "~"
#        # [ $i = "." ]; or set -l desc (string replace -r -- "^$HOME" "~" "$i")
#        pushd $i
#        for d in (commandline -ct)*/
#            # Check if it's accessible - the glob only matches directories
#            [ -x $d ]; and printf "%s\t%s\n" $d $desc
#        end
#        popd
#    end
#end
#
#complete -f -c go -n '__fish_seen_subcommand_from install' -a '(complete_gopath)'

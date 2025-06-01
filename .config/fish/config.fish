if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/.local/bin/zig
set -x PATH $PATH ~/.local/bin/flutter/bin

set -Ux JAVA_HOME /usr/lib/jvm/java-21-openjdk
set -Ux CHROME_EXECUTABLE brave-browser

alias --save fastfetch="fastfetch -l ~/logo.txt --logo-padding-top 2"

alias --save gs="git status"
alias --save gc="git commit"
alias --save ga="git add"
alias --save gp="git push"
alias --save gu="git pull"
alias --save gd="git diff"
alias --save gst="git stash"
alias --save gch="git checkout"

clear

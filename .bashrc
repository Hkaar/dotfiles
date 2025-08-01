# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/zig:$PATH"
export PATH="$HOME/.local/bin/android-studio/bin:$PATH"
export PATH="$HOME/.local/bin/dbeaver:$PATH"

export CHROME_EXECUTABLE=brave-browser
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk

alias fastfetch="fastfetch -l ~/logo.txt --logo-padding-top 2"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

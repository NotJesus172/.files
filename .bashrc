# .bashrc

eval -- "$(/usr/bin/starship init bash --print-full-init)"


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

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

#   Date Tinted

#   Date Untinted
#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[90;1;4m\]\d @ \t\n\[\e[24;96m\]\u\[\e[90m\]@\[\e[38;5;207m\]\h:\[\e[0m\] \[\e[92;1m\]\w\[\e[92m\]:\[\e[0m\] \[\e[38;5;160;1;4m\]${PS1_CMD1}\n\[\e[0;97;2m\]\s-\V-\$\[\e[0m\] '


#   Testing
#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[90;1;4m\]\d\[\e[90m\] \[\e[90m\]@\[\e[90m\] \[\e[90m\]\t\n\[\e[24;38;5;208m\]\u\[\e[90m\]@\[\e[38;5;33m\]\h\[\e[38;5;207m\]:\[\e[0m\] \[\e[92;1;2m\]\w\[\e[0;1;92m\]:\[\e[0m\] \[\e[38;5;201;1;4m\]${PS1_CMD1}\n\[\e[0;97;2m\]\s\[\e[97m\]-\[\e[97m\]\V\[\e[0m\]:\[\e[97;2m\]\W\[\e[97m\]\$\[\e[0m\] '



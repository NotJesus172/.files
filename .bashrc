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
#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[90;1;2;4m\]\d @ \t\n\[\e[0;1;96m\]\u\[\e[90m\]@\[\e[38;5;207m\]\h:\[\e[0m\] \[\e[92;1m\]\w\[\e[92m\]:\[\e[0m\] \[\e[91;1;4m\]${PS1_CMD1}\n\[\e[0;97;2m\]\s-\V-\$\[\e[0m\] '

#   Date Untinted
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[90;1;4m\]\d @ \t\n\[\e[24;96m\]\u\[\e[90m\]@\[\e[38;5;207m\]\h:\[\e[0m\] \[\e[92;1m\]\w\[\e[92m\]:\[\e[0m\] \[\e[38;5;160;1;4m\]${PS1_CMD1}\n\[\e[0;97;2m\]\s-\V-\$\[\e[0m\] '

#!/bin/bash

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# shell completition
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# grep coloring
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'
# ls coloring
export CLICOLOR=1
# history
export HISTFILESIZE=10000000
export HISTSIZE=10000000
export HISTTIMEFORMAT="%F %T "
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


alias ls='ls -G'
alias ll='ls -lG'

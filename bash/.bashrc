

# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

HISTFILESIZE=100000
HISTSIZE=10000

shopt -s histappend
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias -- cat='mcat --img-height 95% --ls-height 4c --kitty'
alias -- egrep='egrep --color=auto'
alias -- fgrep='fgrep --color=auto'
alias -- grep='grep --color=auto'
alias -- l='mycat ls'
alias -- la='ls -lA'
alias -- ll='ls -lF'
alias -- ls='ls --color=auto'
alias -- lsi='mcat --img-height 95% --ls-height 4c --kitty ls'
alias -- mycat='mcat --img-height 95% --ls-height 4c --kitty'

if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
  . "/nix/store/8lpwn6d9k2j1dwdgkidhjqjy3imfw49f-bash-completion-2.17.0/etc/profile.d/bash_completion.sh"
fi

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

PATH=$PATH:/home/arthos/.local/bin


BASH_IT="Applications/bash_it"
export BASH_IT_THEME='barbuk'
unset MAILCHECK
export IRC_CLIENT='irssi'
source 'Applications/bash_it/bash_it.sh'


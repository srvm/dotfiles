bind \cl 'forward-char'
bind \ck 'history-search-backward'
bind \cj 'history-search-forward'

alias s='svn'
alias g='gvim'
alias m='make'
alias mc='make clean'
alias mcm='make clean; make'
alias x='exit'
alias r='reset'
alias f='fg'
alias l='ls'
alias ll='ls -aFlhs'
alias lll='ls -aFlhs | less'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias sagi='sudo aptitude install'
alias sagr='sudo aptitude remove'
alias vl='vim -n -u /usr/share/vim/vim72/macros/less.vim "+set background=dark"'
alias dum='du -h --max-depth=1'
alias cade='ssh -Y muralidh@lab1-12.eng.utah.edu'
alias soc='ssh sauravm@shell.cs.utah.edu'
alias pd='pushd -n'
alias bd='popd'

alias gs='git status'
alias gb='git branch'
alias gci='git commit'
alias gp='git push'
alias gl='git pull'

set -x PATH /usr/local/cuda/bin $PATH
set -x LD_LIBRARY_PATH /home/saurav/bin/boost/lib /home/saurav/bin/libsvm-3.12/ /usr/local/cuda/lib64 /home/saurav/bin/libcpuid/lib /home/saurav/code/nitro/trunk/bin
set -x ROSEHOME /home/saurav/bin/rose
set -x BOOSTHOME /home/saurav/bin/boost
set -x CUDACHILL true


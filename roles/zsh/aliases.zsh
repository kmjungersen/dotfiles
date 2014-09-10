# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias cl="clear"
alias c="clear"
alias pg='ps -ef | grep'

alias reload!='. ~/.zshrc'
alias zshconfig="exec $EDITOR ~/.zshrc"
alias vimrc="exec $EDITOR ~/.vimrc"

alias gg='git status'
alias gd='git diff'
alias gc='git commit -m '
alias ga='git add '
alias gp='git push '

alias vu='vagrant up'
alias vh='vagrant halt'
alias vd='vagrant destroy'
alias v='vagrant '

alias p='python '
alias ip='ipython'
alias s='ssh-copy-id '
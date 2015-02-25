# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias aa='vim ~/dotfiles/roles/zsh/aliases.zsh'

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
alias g='git'
alias co='checkout'
alias gco='git checkout -b'
alias gl='git log'
alias gll='git logg'

alias vu='vagrant up'
alias vh='vagrant halt'
alias vd='vagrant destroy'
alias v='vagrant '

alias p='python '
alias ip='ipython'
alias ipnb='ipython notebook'
alias s='ssh-copy-id '

alias cd..='cd ..'
alias cd...='cd .. && cd ..'
alias cd....='cd... && cd..'

alias aliases='vim ~/dotfiles/roles/zsh/aliases.zsh'
alias dotvim='cd ~/dotfiles && vim'

alias envs="ls ~/anaconda/envs"
alias rmenv="conda remove --all -n "

alias ptt='pt -v'

alias pc='/usr/local/bin/charm '



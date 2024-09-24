alias ipa='ip -c -br a'
alias ipl='ip -c -br l'

alias ..='cd ..'
alias mkdir='mkdir -p'

mcd() {
  mkdir -p "$1"
  cd "$1"
}
complete -F _cd mcd

# Git
# No arguments: `git status`
# With arguments: acts like `git`
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}
# Complete g like git
if [ -f "/usr/share/bash-completion/completions/git" ]; then
	source /usr/share/bash-completion/completions/git
	__git_complete g __git_main
fi

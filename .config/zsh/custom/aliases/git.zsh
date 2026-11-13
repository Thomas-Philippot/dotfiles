# Git aliases

alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

# Switch to a local or remote branch picked with fzf, most recent first
# (drop oh-my-zsh's gco alias first, it would break the function definition)
unalias gco 2> /dev/null
gco() {
  git rev-parse --is-inside-work-tree > /dev/null || return
  git fetch --prune --quiet

  local branch
  branch=$(git for-each-ref --sort=-committerdate --format='%(refname)' refs/heads refs/remotes \
    | sed -E 's#^refs/(heads|remotes/[^/]+)/##' \
    | grep -vx HEAD \
    | awk '!seen[$0]++' \
    | fzf) || return

  git switch "$branch" && git pull
}

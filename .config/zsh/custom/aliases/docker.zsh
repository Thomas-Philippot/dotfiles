# Docker compose aliases

alias dup='docker compose up -d'
alias dstop='docker compose stop'
alias dbuild='docker compose build'
alias drebuild='docker compose down && docker compose build && docker compose up -d'

dlogs() {
  docker compose logs -f "$@"
}

dbash() {
  docker compose exec -it "$1" bash
}

drestart() {
  docker compose restart "$@"
}

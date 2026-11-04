# YesWeHack (Symfony in docker) aliases

alias dphp='docker compose exec -it php bash'

sf() {
  docker compose exec -it php bin/console "$@"
}

openapi() {
  docker compose exec -it php bin/console nelmio:apidoc:dump --env=dev --area=api > openapi.json
  mv openapi.json "$HOME/Documents/bruno_openapi/YesWeHack/"
}

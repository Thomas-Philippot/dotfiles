# Tools
alias ai='claude'
alias cx='printf "\033[2J\033[3J\033[H" && claude --permission-mode bypassPermissions'
n() { if [ "$#" -eq 0 ]; then command nvim . ; else command nvim "$@"; fi; }

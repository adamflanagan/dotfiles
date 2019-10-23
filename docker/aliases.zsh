alias dc='docker-compose'
alias dcrm='docker-compose rm'
alias dck='docker-compose kill'

alias dms='docker-machine start default'
alias dmr='docker-machine restart default'
alias dmip='docker-machine ip default'
alias dme='eval "$(docker-machine env default)"'

function dcu() {
    if [ -f ./docker-compose.local.yml ]; then
        docker-compose --file ./docker-compose.local.yml up
    else
        docker-compose up
    fi
}

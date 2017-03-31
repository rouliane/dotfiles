# XDEBUG from CLI
enableXdebug() {
    ip="172.17.3.60"
    export XDEBUG_CONFIG="idekey=Eclipse remote_host=$ip"
}

disableXdebug() {
    unset XDEBUG_CONFIG
}

# alias for composer, keeping parameters
# bash colorisation
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
composer() {
    if [ -f composer.phar ]; then
        php composer.phar "$@"
    else
        echo -e "\e[1;33m\e[41m404 : composer.phar not found\e[0m"
    fi
}

# download composer
dlcomposer() {
    if [ -f composer.phar ] ; then
        echo -e "\e[1;33m\e[41mcomposer.phar already exists \e[0m"
    else
        curl -sS https://getcomposer.org/installer | php
    fi
}

# Docker helpers
dps() {
    docker ps --format "table {{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Names}}" "$@"
}

dex() {
    local CONTAINER_NAME="$1"
    local COMMAND="bash"

    if [ "$#" -gt 1 ]; then
        COMMAND=$(echo "$@" | cut -d' ' -f2-)
    fi

    docker exec -ti "${CONTAINER_NAME}" ${COMMAND}
}

#####################################################################
# MY ALIAS
#####################################################################

hash -d w=/mnt/c/Users/{user}/Workspace
hash -d s=/mnt/c/Users/{user}

alias getud="sudo apt-get update"
alias getug="sudo apt-get upgrade"
alias getdu="sudo apt-get dist-upgrade"
alias getrm="sudo apt-get autoremove"
alias getcl="sudo apt-get clean"
alias getin="sudo apt-get install"
alias getun="sudo apt-get purge"

alias e="exit"
alias nn="nano"

alias l="colorls --group-directories-first --almost-all"
alias ll="colorls --group-directories-first --almost-all --long" # detailed list view

alias chrome="google-chrome-stable --headless --disable-gpu"

alias ator="aria2c  --file-allocation=none --listen-port={port} --enable-dht=true --dht-listen-port={port}"

alias sdkm="sdkmanager --sdk_root=${ANDROID_HOME}"

alias mysql_start="mysqld_safe &"
alias mysql_stop="mysqladmin shutdown -u root -p"
alias nginx_start="sudo service nginx start"
alias nginx_stop="sudo service nginx stop"
alias nginx_res="sudo service nginx restart"
alias php74_start="sudo service php7.4-fpm start"
alias php74_stop="sudo service php7.4-fpm stop"
alias php74_res="sudo service php7.4-fpm restart"

#####################################################################
# PATH
#####################################################################

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.local/bin"

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Flutter
export PATH="$PATH:$HOME/apps/flutter/bin"

# JAVA
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin"

# Android
export ANDROID_HOME="$HOME/apps/android"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# MariaDB
export MYSQL_HOME="$HOME/apps/mariadb-10.5.5"
export PATH="$PATH:$MYSQL_HOME/bin"

#####################################################################
# ZPLUG
#####################################################################
source ~/.zplug/init.zsh

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Load theme file
zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

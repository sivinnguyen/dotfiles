hash -d w=/mnt/c/Users/{user}/Workspace
hash -d s=/mnt/c/Users/{user}

alias getud="sudo apt-get update"
alias getug="sudo apt-get upgrade"
alias getdu="sudo apt-get dist-upgrade"
alias getrm="sudo apt-get autoremove"

alias e="exit"
alias nn="nano"

alias l="colorls --group-directories-first --almost-all"
alias ll="colorls --group-directories-first --almost-all --long" # detailed list view

alias chrome="google-chrome-stable --headless --disable-gpu"

alias ator="aria2c  --file-allocation=none --listen-port={port} --enable-dht=true --dht-listen-port={port}"

alias sdkm="sdkmanager --sdk_root=${ANDROID_HOME}"

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

#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$scriptDir/logo.sh" # запуск лого
. "$scriptDir/installation.sh" # запуск установки необходимых компонентов

if [ -f $scriptDir/.installed ]; then
    log ".installed file found";
    log "Expecting things to be already present"
else
    log "Things might not be installed"
    log "Will Setup Environment and install assets"
    setupEnvironment
    abort_on_failure "Failed to setup Environment"
    setupAssets  
    abort_on_failure "Failed to Setup Assets"
    touch $scriptDir/.installed

fi

. "$scriptDir/launch.sh" # запуск 

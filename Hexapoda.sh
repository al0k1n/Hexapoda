#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$scriptDir/logo.sh" # запуск лого
. "$scriptDir/installation.sh" # запуск установки необходимых компонентов

if [ -f $scriptDir/.installed ]; then
    echo ".installed file found";
    echo "Expecting things to be already present"
else
    echo "Things might not be installed"
    echo "Will Setup Environment and install assets"
    setupEnvironment
    abort_on_failure "Failed to setup Environment"
    touch $scriptDir/.installed

fi

. "$scriptDir/launch.sh" # запуск 

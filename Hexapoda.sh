#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$scriptDir/logoinstall.sh" # запуск лого
. "$scriptDir/installation.sh" # запуск установки необходимых компонентов

if [ -f "$scriptDir/.installed" ]; then
    echo ".installed file found. Expecting everything to be already present."
else
    echo "Things might not be installed. Setting up the environment and installing assets..."
    setupEnvironment || { echo "Failed to setup Environment"; exit 1; }
    touch "$scriptDir/.installed" || { echo "Failed to create .installed file"; exit 1; }
fi

. "$scriptDir/launch.sh" # запуск 

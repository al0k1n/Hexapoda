#!/bin/bash
function setupEnvironment(){
    echo "Сhecking your system and setting up the environment: "
    eval $(echo "$sudoo apt update;")    

    echo "Installing Python3/pip3"
    eval $(echo "$sudoo apt install -y python3;")
    eval $(echo "$sudoo apt install -y python3-pip;")

    echo "Installing git"
    eval $(echo "$sudoo apt install -y git;")
    
    echo "Installing Metasploit Framework"
    eval $(echo "$sudoo apt install -y metasploit-framework;")

    echo "Installing Dirsearch"
    eval $(echo "$sudoo apt install -y dirsearch;")

    echo "Installing Subfinder"
    eval $(echo "$sudoo apt install -y subfinder;")
}

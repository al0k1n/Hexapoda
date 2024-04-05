
function setupEnvironment(){
    echo "checking your system and setting up the environment: "
    eval $(echo "$sudoo apt update;")    

    echo "setting gopath";
    if [ -f ~/.bashrc ]; then
        echo "export GOPATH=\$HOME/go" >> ~/.bashrc
        echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.bashrc
        source ~/.bashrc;
    elif [ -f ~/.zshrc ]; then
        echo "export GOPATH=\$HOME/go" >> ~/.zshrc
        echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.zshrc
        source ~/.zshrc;
    fi

    echo "Installing golang"
    eval $(echo "$sudoo apt install -y golang;")

    echo "Installing Python3/pip3"
    eval $(echo "$sudoo apt install -y python3;")
    eval $(echo "$sudoo apt install -y python3-pip;")

    echo "Installing git"
    eval $(echo "$sudoo apt install -y git;")

    echo "Installing libcap-dev"
    eval $(echo "$sudoo apt install -y libpcap-dev;")
}
setupEnvironment

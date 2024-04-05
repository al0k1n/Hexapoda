
function setupEnvironment(){
    echo "Сhecking your system and setting up the environment: "
    eval $(echo "$sudoo apt update;")    

    echo "Installing golang"
    eval $(echo "$sudoo apt install -y golang;")

    echo "Installing Python3/pip3"
    eval $(echo "$sudoo apt install -y python3;")
    eval $(echo "$sudoo apt install -y python3-pip;")

    echo "Installing git"
    eval $(echo "$sudoo apt install -y git;")
}
setupEnvironment
function downloadGitProjects(){  
    cd  $scriptDir
    git clone https://github.com/GerbenJavado/LinkFinder;
    git clone https://github.com/devanshbatham/ParamSpider;
    git clone https://github.com/m4ll0k/SecretFinder;
    git clone https://github.com/projectdiscovery/nuclei-templates;
    git clone https://github.com/maurosoria/dirsearch
    git clone https://github.com/s0md3v/Corsy.git;
    git clone https://github.com/hisxo/gitGraber.git;
    git clone https://github.com/lobuhi/byp4xx.git;
}

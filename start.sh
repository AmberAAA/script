#!/bin/zsh

source ~/.nvm/nvm.sh

cloudApp(){
    echo "启动cloudApp"
    cd ~/code/cloudApp && npm run serve  > /dev/null 2>&1 &
}

cloudStandard(){
    echo "启动cloudStard"
    cd ~/code/cloudStandard && npm run serve  > /dev/null 2>&1 &
}

demon(){
    echo "启动传媒版"
    cd ~/code/demon && npm run start  >  /dev/null 2>&1 &
}

media_editor(){
    echo "启动媒体编辑器"
    cd ~/code/media_editor && npm run serve  > /dev/null 2>&1 &
}

echo "一键上班v1.1"

echo "先下班 不破不立"
stop

nvm use 14

# 一键上班
if [ -z "$1" ]; then
    cloudApp
    cloudStandard
    demon
    media_editor
else
    for i in $@
    do
        if [[ $i == "cloudApp" || $i == "ca" ]]; then
            cloudApp
        elif [[ $i == "cloudStandard" || $i == "cs" ]]; then
            cloudStandard
        elif [[ $i == "demon" || $i == "d" ]]; then
            demon
        elif [[ $i == "media_editor" || $i == "m" ]]; then
            media_editor
        fi
    done
fi



#!/bin/zsh

echo "一键上班v1.0"

echo "先下班 不破不立"
stop

# 一键上班

echo "" > ~/log

echo "启动cloudApp"
cd ~/code/cloudApp
npm run serve  >> ~/log 2>&1 &

echo "启动cloudStard"
cd ~/code/cloudStandard
npm run serve  >> ~/log 2>&1 &

echo "启动传媒版"
cd ~/code/demon
npm run start  >> ~/log 2>&1 &

echo "启动媒体编辑器"
cd ~/code/media_editor
npm run serve  >> ~/log 2>&1 &


#!/bin/zsh
echo "一键下班v1.0"
echo "删除/Users/anborong/code/目录下的所有进程"
ps -ef | grep "/Users/anborong/code/" | awk '{print $2}'| xargs kill -9 
ps -ef | grep "gulp" | awk '{print $2}'| xargs kill -9

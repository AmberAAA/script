#!/bin/zsh

echo "快速连接到远程服务器"

t=root@tower.local
u=ubuntu.local
dev=root@172.16.9.118

echo ""
echo "Which server would you like to connect to?"
echo "t: $t"
echo "u: $u"
echo "dev: $dev"
read "name?t/u/dev: "

if [[ $name == "t" ]]; then
    echo "Connecting to $t"
    ssh $t
elif [[ $name == "u" ]]; then
    echo "Connecting to $u"
    ssh $u
elif [[ $name == "dev" ]]; then
    echo "Connecting to $dev"
    ssh $dev
fi

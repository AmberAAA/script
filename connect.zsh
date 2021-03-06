#!/bin/zsh

echo "快速连接到远程服务器"

t=root@tower.local
u=amber@ubuntu.local
dev=root@172.16.9.118
aliyun=root@anborong.top

echo ""
echo "Which server would you like to connect to?"
echo "t: $t"
echo "u: $u"
echo "a: $aliyun"
echo "dev: $dev"

if [[ $1 ]] then
else
    read "name?t/u/p/dev/a: "
fi


if [[ $name == "t" || $1 == "t" ]]; then
    echo "Connecting to $t"
    ssh $t
elif [[ $name == "u"|| $1 == "u" ]]; then
    echo "Connecting to $u"
    ssh $u
elif [[ $name == "dev" || $1 == "dev" ]]; then
    echo "Connecting to $dev"
    ssh $de
elif [[ $name == "a" || $1 == "a" ]]; then
    echo "Connecting to $aliyun"
    ssh $aliyun
fi

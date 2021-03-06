#!/bin/zsh

echo "切换命令行代理 V1.0"


http_proxy="http://127.0.0.1:1087"
socks5_proxy="socks5://127.0.0.1:1080"


flag=0

setProxy(){
    echo "配置代理中..."
    export "http_proxy=$http_proxy"
    export "https_proxy=$http_proxy"
    export "ALL_PROXY=$socks5_proxy"
    npm config set proxy $http_proxy
    echo "http_proxy: $http_proxy"
    echo "socks5_proxy: $socks5_proxy"
}


unsetProxy() {
    echo "取消代理"
    unset http_proxy
    unset https_proxy
    unset ALL_PROXY
    npm config delete proxy
}

for i in $(env | grep proxy)
do
    echo $i
    flag=1
done

if [ $flag -eq 1 ]; then
    echo "当前存在代理";
    unsetProxy
else
    echo  "当前不存在代理"
    setProxy
fi



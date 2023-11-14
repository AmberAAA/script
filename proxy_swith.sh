#!/bin/zsh

echo "切换命令行代理 V1.0"


http_proxy="http://192.168.1.3:20171"
socks5_proxy="socks5://192.168.1.3:20170"

flag=0

setProxy(){
    echo "配置代理中..."
    export "HTTP_PROXY=$http_proxy"
    export "HTTPS_PROXY=$http_proxy"
    export "ALL_PROXY=$socks5_proxy"
    npm config set proxy $http_proxy
    echo "HTTP_PROXY: $http_proxy"
    echo "SOCKS5: $socks5_proxy"
}


unsetProxy() {
    echo "取消代理"
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset ALL_PROXY
    npm config delete proxy
}

for i in $(env | grep PROXY)
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



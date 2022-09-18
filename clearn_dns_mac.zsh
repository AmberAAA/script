#/bin/zsh

echo "清除mac dns"

if [ $USER = "root" ] 
then
	killall -HUP mDNSResponder
else
	echo "请使用管理员权限"
fi


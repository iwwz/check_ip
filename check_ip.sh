#!/bin/bash
key=
content=DayutIP
newip=$(cat /root/check_ip/newip.txt)
lastip=$(cat /root/check_ip/lastip.txt)
#sendip=cat /root/check_ip/newip.txt
newip1=/root/check_ip/newip.txt
lastip1=/root/check_ip/lastip.txt
curl https://myip.ipip.net -o newip.txt 



#发布方法2
if [ "$newip1" = "$lastip1" ] ;then
sleep 2
else curl -d "text=公司IP地址又更新啦&desp=${newip}" "https://sc.ftqq.com/$key.send" >/dev/null 2>&1 &
fi


sleep 3
echo "$newip" > lastip.txt
exit;

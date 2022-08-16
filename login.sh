#!/bin/bash
ping -c5 baidu.com &>/dev/null  
if [ $? -ne  0 ]
then
        curl 'http://地址/drcom/login?callback=dr1004&DDDDD=账号%40cmcc&upass=密码&0MKKey=123456&R1=0&R3=0&R6=0&para=00&v6ip=&v=9102'
fi
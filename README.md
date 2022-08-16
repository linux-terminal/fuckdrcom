# fuckdrcom
Fucking Dr.com in an elegant way
~~优雅地淦翻校园网认证Dr.com(D版)~~

**各学校系统略有不同，请先确认你的Dr.com版本(D版，P版，X版)**
**本人只做了很肤浅的研究，不回答任何技术问题，如果有任何建议请发Issue**

# Step1.
连接校园网，打开Chrome并进入校园网认证界面
``F12``进入开发者模式，勾选**Network**，再勾选**Preserve log**
输入账号并登录
找到login?callback开头的记录，右键点击，Copy - Copy as curl(bash)

# Step2.
打开终端，新建login.sh
```vi login.sh```
编辑脚本(以我校为例)
```shell
#!/bin/bash
#判断是否能连通百度
ping -c5 baidu.com &>/dev/null  
if [ $? -ne  0 ]
then
#执行curl登录命令，结合刚才复制的curl修改
        curl 'http://地址/drcom/login?callback=dr1004&DDDDD=账号%40cmcc&upass=密码&0MKKey=123456&R1=0&R3=0&R6=0&para=00&v6ip=&v=9102'
fi
```

shift+冒号，输入``wq!!``退出并保存

# Step3.
赋予权限
```chmod +X ./login.sh```
复制login.sh到/usr/bin
```mv ./login.sh /usr/bin```

# Step4.
将脚本加入crontab定时任务
```shell
#每分钟执行一次
* * * * * /usr/bin/login.sh
```

~~corntab怎么用请自搜，懒得写了~~

#!/bin/bash

echo '欢迎使用 [Panel DB] 安装脚本'
sleep 1;
echo '本脚本针对Linux平台下不熟悉Docker的朋友，提供简易安装方式，高手请自动忽略～'
sleep 1;
echo '执行安装前请先确保数据库初始化正确～'
sleep 1;
echo ''

echo 'Docker检测～'
sleep 1;
if command -v docker >/dev/null 2>&1;then 
    echo '检测到Docker已安装'
else 
    echo "未检测到Docker运行,开始Docker安装～"
    echo "开始安装Docker环境..."
    curl -sSL https://get.daocloud.io/docker | sh
    service docker restart
    echo "安装Docker环境...安装完成!"
fi

while :
do
    read -t 30 -p "请选择操作 A:安装面板 S:停止面板 D:删除面板 R:重启面板 :  " operation
    if [[ $operation == 'A' || $operation == 'a' ]]; then
        echo '安装面板'

        while :
        do
            read -t 30 -p "请输入端口，默认8080 :  " port
            if [[ $port == '' ]]; then
                port=8080
                break
            else
                break
            fi
        done
        
        while :
        do
            read -t 30 -p "请输入Mysql数据库IP，默认127.0.0.1 :  " dbIp
            if [[ $dbIp == '' ]]; then
                dbIp=127.0.0.1
                break
            else
                break
            fi
        done
        
        while :
        do
            read -t 30 -p "请输入Mysql数据库端口，默认3306 :  " dbPort
            if [[ $dbPort == '' ]]; then
                dbPort=3306
                break
            else
                break
            fi
        done

        while :
        do
            read -t 30 -p "请输入Mysql数据库账户，默认root :  " dbUser
            if [[ $dbUser == '' ]]; then
                dbUser=root
                break
            else
                break
            fi
        done

        while :
        do
            read -t 30 -p "请输入Mysql数据库密码，默认root :  " dbPass
            if [[ $dbPass == '' ]]; then
                dbPass=root
                break
            else
                break
            fi
        done

        while :
        do
            read -t 30 -p "请输入Mysql数据库名称，默认dsback :  " db
            if [[ $db == '' ]]; then
                db=dsback
                break
            else
                break
            fi
        done

        while :
        do
            read -t 30 -p "请输入面板账户，默认admin :  " sysUser
            if [[ $sysUser == '' ]]; then
                sysUser=admin
                break
            else
                break
            fi
        done

        while :
        do
            read -t 30 -p "请输入面板密码，默认admin :  " sysPass
            if [[ $sysPass == '' ]]; then
                sysPass=admin
                break
            else
                break
            fi
        done

        echo "开始安装面板～"
        docker run -d --name dsback --restart=always -p $port:8080 -e ip=$dbIp -e port=$dbPort -e db=$db -e dbUserName=$dbUser -e dbPassWord=$dbPass -e sysUserName=$sysUser -e sysPassWord=$sysPass aeert/dsback:1.0.0

        break
    elif [[ $operation == 'S' || $operation == 's' ]]; then
        echo '停止面板'
        docker stop dsback
        break
    elif [[ $operation == 'D' || $operation == 'd' ]]; then
        echo '删除面板'
        docker stop dsback
        docker rm dsback
        break
    elif [[ $operation == 'R' || $operation == 'r' ]]; then
        echo '重启面板'
        docker restart dsback
        break
    else
        echo "指令错误,请输入 A|a|S|s|D|d|R|r"
    fi
done

echo '脚本执行完毕!'

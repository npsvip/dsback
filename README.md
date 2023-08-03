# Panel DB
Panel DB是一款免费、支持多系统、多种中间件安装、多种数据库定时备份、文件定时备份、系统监控、钉钉通知、企业微信通知、服务器DDOS防护、病毒查杀等功能的运维面板，支持docker离线部署，支持在线更新

***# 软件功能***</br>
支持Linux全平台，多种数据库、文件定时备份，多种服务器中间件安装，企业微信通知，系统DDOS防御及防攻击优化等

系统及通知</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Linux全平台(中间件安装及系统防护功能仅支持Centos、Ubuntu、Debian)</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Windows Server</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 钉钉实时通知</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 邮箱实时通知</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 企业微信实时通知</br>

数据库备份</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Mysql</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● SqlServer</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● MongoDb</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● PostgreSql

文件备份</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 全量备份</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 增量备份</br>

中间件安装</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Redis</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Mysql</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● SqlServer</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● MongoDb</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● PostgreSql</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Docker</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● Nginx

系统防护</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● DDOS防御脚本</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● SYN攻击优化</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 防端口扫描</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 禁UDP</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 禁PING</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 禁止国外IP</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 病毒查杀</br>

***# 安装教程***</br>
step1:</br>
创建mysql数据库，表结构sql文件上面已经给了,下载后导入数据库即可</br>

step2:</br>
一行docker命令即可，参数解释如下</br>
ENV ip=数据库IP,默认127.0.0.1</br>
ENV port=数据库端口,默认3306</br>
ENV db=数据库名称,默认dsback</br>
ENV dbUserName=数据库账户,默认root</br>
ENV dbPassWord=数据库密码,默认root</br>
ENV sysUserName=登录面板账户,默认admin</br>
ENV sysPassWord=登录面板密码,默认admin</br>

示例如下：</br>
```docker run -d --name dsback --restart=always -p 8080:8080 -e ip=你的数据库IP -e port=你的数据库端口 -e db=你的数据库 -e dbUserName=你的数据库账号 -e dbPassWord=你的数据库密码 -e sysUserName=admin -e sysPassWord=admin -v 你的本地日志目录:/opt/logs/api/ aeert/dsback:latest
# ARM架构可选择 aeert/dsback:arm 或 aeert/dsback:arm64 镜像
```

或者直接运行上方脚本</br>
```./panelDB.sh```

**软件截图**
![1](https://user-images.githubusercontent.com/95081538/188084123-500ca97a-4d23-473b-98c1-264e935c0587.jpg)
![2](https://user-images.githubusercontent.com/95081538/188084152-b2f06ed7-62cf-4237-b9a5-8cd062b2c514.jpg)
![3](https://user-images.githubusercontent.com/95081538/188084172-5948fa9e-ea3e-47c2-8ec4-58bfff43fbe5.jpg)
![4](https://user-images.githubusercontent.com/95081538/188084194-12d8912d-c997-43fe-b449-c659141861fa.jpg)
![5](https://user-images.githubusercontent.com/95081538/188084222-4f6b80db-2261-4bd6-9ec8-992707132731.jpg)
![image](https://user-images.githubusercontent.com/95081538/189851416-c3216f40-2cb6-4bf3-ae2e-1cf7f468eb9f.png)
<img width="1677" alt="WechatIMG321" src="https://user-images.githubusercontent.com/95081538/189280624-e44414f9-1703-4ef0-a1c3-783edd3b796f.png">
![1663057386766](https://user-images.githubusercontent.com/95081538/189850907-4cc438d8-1dc6-413a-92a8-d2e2e4c0ac1a.jpg)
![7](https://user-images.githubusercontent.com/95081538/188084275-6b2c1ee7-05d4-4dee-9bbe-7bd2739c806a.jpg)


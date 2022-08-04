# dsback
小蝴蝶面板是一款支持数据库定时备份、文件定时备份的开源软件，支持docker离线部署

# docker安装
##step1:
    创建mysql数据库，表结构sql文件上面已经给了
##step2:
    一行docker命令即可，参数解释如下</br>
    ENV ip=数据库IP,默认127.0.0.1</br>
    ENV port=数据库端口,默认3306 </br>
    ENV db=数据库名称,默认dsback </br>
    ENV dbUserName=数据库账户,默认root </br>
    ENV dbPassWord=数据库密码,默认root </br>
    ENV sysUserName=登录面板账户,默认admin </br>
    ENV sysPassWord=登录面板密码,默认admin
    
    docker run -d --name dsback --restart=always -p 8080:8080 -e ip=127.0.0.1 -e port=3306 -e db=dsback -e dbUserName=root -e dbPassWord=root -e sysUserName=admin -e sysPassWord=admin aeert/dsback:1.0.0

# 软件截图
![image](https://user-images.githubusercontent.com/95081538/182773802-67c0f991-495a-46dd-99a8-dc159dfec60a.png)
![image](https://user-images.githubusercontent.com/95081538/182773961-c88b5c52-6332-44fa-b24c-8233910135fe.png)
![image](https://user-images.githubusercontent.com/95081538/182774047-10521ca8-0335-4e65-ba6f-b250a4dcffce.png)
![image](https://user-images.githubusercontent.com/95081538/182774235-c0fa3015-f393-4cd5-b4c5-23e696a2852d.png)
![image](https://user-images.githubusercontent.com/95081538/182774269-ea799aec-b0ca-415d-ae87-18b79a768e02.png)


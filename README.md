# dsback
小蝴蝶面板是一款免费开源、支持多系统、多种中间件安装、多种数据库定时备份、服务器DDOS防护等功能的运维面板，支持docker离线部署

**docker安装**</br>
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
```docker run -d --name dsback --restart=always -p 8080:8080 -e ip=127.0.0.1 -e port=3306 -e db=dsback -e dbUserName=root -e dbPassWord=root -e sysUserName=admin -e sysPassWord=admin aeert/dsback:1.0.0```

**软件截图**
![1](https://user-images.githubusercontent.com/95081538/184536764-a732b3db-95f2-47d6-af6d-0c544c774053.jpg)
![2](https://user-images.githubusercontent.com/95081538/184536773-62ceec30-23a6-4d6c-8c51-52828ddd80cb.jpg)
![3](https://user-images.githubusercontent.com/95081538/184536778-6d13e0e7-cfc9-41b6-8198-f445304ae08c.jpg)
![4](https://user-images.githubusercontent.com/95081538/184536780-e648e985-cff9-44f6-9203-dc8e3c67a3a8.jpg)
![5](https://user-images.githubusercontent.com/95081538/184536784-3dec196c-6033-47df-a755-70985b2df6b0.jpg)
![6](https://user-images.githubusercontent.com/95081538/184536786-a33cd91b-5abe-4333-a2af-b7fe8a007cc3.jpg)
![7](https://user-images.githubusercontent.com/95081538/184536788-33b0d50c-5ee4-4391-b73d-e5f22146c7b0.jpg)
![8](https://user-images.githubusercontent.com/95081538/184536792-393c7e0c-7e17-4ac3-9683-6420c68e9839.jpg)

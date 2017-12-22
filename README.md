# Maven-WebAppDemo

**Version 1.0**

## Demo 说明

+ 主要是完成了利用 Maven 搭建一个 webapp 项目。作为一个通用的内容，方便快速搭建 maven 的 webapp
+ 内附比较完善的注释，自己查看也方便初学者学习

## Demo 搭建环境

+ OS : macOS Sierra
+ IDE : IntelliJ IDEA 2017
+ JDK : 1.8
+ Tomcat : 8.0.24

## Demo 集成内容及版本

+ Maven 3.3
+ SpringMVC-4.3.8
+ MyBatis 3.4.4
+ Mysql 驱动6.0.6
+ freemarker 2.3.27 （模板引擎）
+ freemarker 集成 override,block,extends Rapid-framework , rapid-core 4.0

## 初始数据

+ 手动执行 init.sql 脚本

## 创建 Maven 项目

由于 JAVA 下IDE 较多，普遍有 Eclipse、IntelliJ IDEA...等等

此代码是在IntelliJ IDEA下完成。此处简单描述下步骤。

1. 新建项目，选择 Maven
2. 勾选 Create from archetype 从原型创建
3. 选择 org.apache.maven.archetypes:maven-archetype-webapp , 点击“next”
4. 录入 groupId,artifactid,version , 点击“next”
5. Maven home directory 选择你本机上的 maven 版本，或者使用 IDE 自带的 maven
  + IntelliJ IDEA 2017 自带 Maven 3.3.9
6. Local repository 本地保存 Maven 下载包的路径，**个人建议为避免冲突，每个项目一个路径。**
  + 由于maven骨架和一些jar需要去maven的仓库下载，所以创建项目的时候速度会非常慢（外国的服务器你懂得），因此我们可以直接访问[archetype-catalog.xml](http://repo1.maven.org/maven2/archetype-catalog.xml)，把这个xml下载下来放到本地的maven目录中（在Maven home directory中，你选择的 Maven 目录），然后在配置界面添加一个参数archetypeCatalog=internal就可以了（按“+”）。 点击“next”
7. 配置 Project name 、 Project location 。 点击“finish”
8. 等待服务器下载资源包即可

## Maven 项目包组成
  
| 包 | 包类型 | 说明|
| :--- | :--- | :--- |
| src-main-java | Sources | 您的后台源代码处，一般包含 controller、pojo、dao、service等 |
| src-main-resources | Resources | 资源目录，一般是项目的配置文件，可以包含*.xml,*.properties |
| src-main-webapp | web | web 项目根目录 |
| src-test-java | Tests | 项目的 junit 用例目录 |
| src-test-resources | Test Resources | test 项目的资源文件目录 |

> Sources、Resources、Tests、Test Resources 在 Eclipse 中均是 Source Folder。 指包中的内容均需要编译至 classes 目录
  

## 参考资料 

+ [IDEA下使用maven构建web项目（SpringMVC+Mybatis整合）](https://www.cnblogs.com/helloyy/p/6826101.html)

## 版本更新说明

+ v1.0 spring4 + mybatis3 + mysql + freemarker2

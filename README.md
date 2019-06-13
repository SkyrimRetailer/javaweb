# Discription

## 项目名称
健身房管理系统

## 项目简介
在运营健身房的过程中，主要涉及到职员管理、会员管理、财务管理、健身记录管理等几个方面。本系统就这几个方面，设计出了一些相应的功能。

## 系统登录方法
- 系统自带超级管理员用户：
    username:admin, password:admin 
    该用户可以体验到系统中的所有功能，并且可以设置系统中其他用户的各项权限，以及设置角色具有的权限。
- 可以点击主页下方的 注册 按钮，到注册页面进行注册。在注册时，可以选择系统角色，不同角色拥有不同的权限。为了方便体验系统功能，本系统没有在注册时增加验证，用户可以随意选择系统角色。


## 基本信息
- 学号: **222016321072014**
- 姓名：*蔡天扬*
- 网址: [120.79.245.41:8080/gym/](http://120.79.245.41:8080/gym/)


## 第一周完成内容
- 搭建Javaweb环境
- 部署了课堂上所写的应用

## 第二周完成内容
- 学习完了视频课程的前13讲
- 部署了13讲的小练习

## 第三周完成内容
- 学习JSP相关知识
- 处理服务器tomcat问题
- 寻找合适的网页模板

## 第四周完成内容
- 完成系统login界面
- 将jsp连接上服务器，handle_login.jsp根据数据库中的用户名和密码信息判断正误

## 第五周完成内容
- 逐步设计健身房管理系统的前端页面，学习了JavaScript和bootstrap框架等等
- 学习了MVC设计模式，并且将login页面的后端也改为MVC模式实现

## 第六周完成内容
- 优化了登录界面的交互逻辑
- 实现了注册功能

## 第七周完成内容
- 学习了session、cookie等知识
- 学习了JSON的使用方法，调试前后端通过 ajax 异步数据交互
- 优化前端页面

## 第八周完成内容
- 完成了系统中“会员信息”板块的部分功能
- 学习并使用了 JavaScript 优化前端页面，对用户输入做一定的控制
- 学习并使用了 bootstrap table 和 modal 组件，界面美观，交互友好

## 第九周完成内容
- 完成了系统中“会员信息”、“职员信息”两个板块的功能（增删改查）
- 使用 JavaScript 实现让 Select 组件的 option 选项随数据变化，并且在编辑一条信息时，信息的原本数据会自动填入相应的输入框，无需重新输入
- 通过 bootstrap table 实现批量删除与客户端的模糊搜索
- 使用联合查询，将职员信息和职员类型信息联合显示

## 第十周完成内容
- 落实session、cookie相关功能
- 完成了登录界面的验证码功能，并且验证码可以点击刷新，实现防止重复提交
- 将前端html格式改成jsp格式，便于在页面内操作session、cookie等元素

## 第十一周完成内容
- 学习了filter的设计与配置，实现了检测用户是否登录的功能。在访问除了登录页面、注册页面以外的页面时，如果用户没有登录，则自动重定向到登录页面。若用户以登录状态访问登录页面，则系统会自动跳转到系统主页，无需再次登录。
- 完成了“健身记录”板块的部分功能：
   1. 会员每次打卡可以增加积分，积分的值可以在web.xml中配置。此处我配置的值为10，即每次打卡会增加10积分。
   2. 打卡时检测卡号是否存在、今日是否已经打卡、健身卡是否过期。若卡号不存在、今日已经打卡过或健身卡已经过期，则提示相应错误信息。
- 初步设计了权限结构和角色权限，详见/GymManager/权限管理。

## 十二周完成内容
- 完成了财务信息板块的增删改查
- 完成了主页板块的各项统计功能。主页能够展示这一周健身房的运营概况、本月的收入情况，主页的图表还显示了本周与上周的健身情况。
- 整个系统的业务功能部分基本完成，只剩下权限管理部分待实现。

## 十三周完成内容
- 享受端午假期，构思权限管理设计方案。

## 十四周完成内容
- 设计了 角色权限 这个概念，即一种角色拥有一组权限。该设定主要用于新用户注册时，用户可以自行选择该账户的角色，从而获得该角色的对应权限。
- 完成了权限管理板块的前端页面和具体功能。拥有 权限管理 权限的用户可以在系统中访问“权限管理”板块，设置各个用户和各个角色的各项权限、新建和删除角色。
- 被允许权限管理的用户可以在该板块设置该系统中所有已注册用户的权限，细分到每一个板块的数据增加、删除、修改、查看。在数据库中建立了相应的表来存放各项权限。
- 设计了用于权限限制的filter，与之前检测用户登录的filter组成filter chain，可以读取当前已登录用户的权限来判断是否能访问相应资源。
- 修复了登录时，第一次用户名或密码输入错误，第后面就无法登录的bug。
- 整个项目基本完工。





# adminbackend
基于springboot+shiro+mybatis-plus+Swagger2的admin后台restful服务开发
##  shiro
shiro配置方面采用ehcache缓存技术，可以自行替换redis。realm配置方面权限设定写死，可以自行完善。用户存储在sys_user表里，需要自己添加用户，密码为一次md5加密。
##  mybatis-plus
mybatis-plus方面参考官方文档https://mp.baomidou.com/
##  Swagger2
Swagger2自动生成api文档界面http://localhost:8090/swagger-ui.html
##  前台代码（已经移除，单独放置到nginx服务器）
前台是vue，详细代码在33infobackend-vue里，此处已经打包放到resource/static目录下，配置好数据库可以直接访问

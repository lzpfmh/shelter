# language: zh-CN
功能: 用户组权限下的镜像存取
  场景: 用户组限制用户执行镜像操作
    假定创建用户u1,u2
    并且用户u1创建用户组g1
    并且用户u2创建用户组g2
    当用户u2登录
    那么不可以在g1中添加镜像
    并且用户u2在g2中添加镜像，版本为v1，成功
    并且u2在界面上删除g2中镜像的版本v1，成功
    当用户u2加入用户组g1
    那么用户u2在g1中添加镜像，版本为v1,v2，成功
    并且u1在界面上删除g1中镜像的版本v1，成功


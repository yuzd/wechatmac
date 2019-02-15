# 该项目 fork https://github.com/TKkk-iOSer/WeChatPlugin-MacOS

# 进行了如下二次开发：

## 机器人功能

可以配置@私聊自己后 将消息发送至服务器(http post方式)获取到结果以微信消息方式发送

## 获取全部的群和所有的通讯录信息

群列表信息包括如下字段：

群ID 群名称

存储在：
/Users/yuzd/Library/Containers/com.tencent.xinWeChat/Data/Documents/TKWeChatPlugin/${你的微信号}/group.plist

通讯录列表包括如下字段：

用户微信号，用户微信昵称 用户微信头像

存储在 

/Users/yuzd/Library/Containers/com.tencent.xinWeChat/Data/Documents/TKWeChatPlugin/${你的微信号}/user.plist

## 服务器发送指定微信消息给指定人or群 功能

配置服务器url后，每隔1秒向该url 获取消息和发送人，然后发送出去

其中指定的人或者群的id是根据上面的功能2获得

## 有什么用

参考 https://github.com/TKkk-iOSer/WeChatPlugin-MacOS/issues/446

## 免责声明

使用插件有风险，使用需谨慎。

本项目旨在提升生活幸福感使用，不可用于商业和个人其他意图。若使用不当，请使用者自行承担。

如有侵权，请联系本人

### 基于Python3.4.3 Ubuntu14.04

1. 利用5sing.kugou.com的Json接口获取对应页面的mp3的实际地址,并在本地根据"歌手/歌曲"来组织保存
2. 利用mplayer命令实现终端自动播放功能

P.S 一直想写一个linux下便于使用5sing听歌的命令行程序,无奈网上大部分关于5sing的爬虫的接口方法都已经失效,经过分析目前的5sing请求方式中的songdownload.js文件,发现只要向 "http://5sing.kugou.com/my/songDownload/download" 以post方式发送songid和songtype即可,songid和songtype都可以利用简单的爬虫得到.

#### 使用方法:
    
    5singPlayer update    #重新登陆获取cookie并保存在cookie.dat文件中

    5singPlayer           #读取cookie.dat文件中的cookie,不重新登陆

#### NOTICE:

    将源代码中的login_data['txtUserName']和login_data['txtPassword']分别替换成你自己的5sing账号
    如果不是Ubuntu环境或者没有安装Chrome,请将fetchHomePage()的调用注释,该函数的作用是用Chrome打开歌手的主页.

#### INSTALL:

    git clone https://github.com/sonack/5sing-Spider.git
    sudo ./install.sh

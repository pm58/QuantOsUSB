-# QuantOsUSB
QuantOsUSB

20181211更新

此处安装版本，稀疏捆绑磁盘是一个目录，因为gihub上传文件大小限制，改变为捆绑磁盘方式。
此稀疏捆绑磁盘已经修改为QuantOsUSB盘10GB，data盘100GB，可以通过推出磁盘后用磁盘管理工具修改映像大小不影响。

稀疏磁盘是一个文件，如果修改为100GB大于50MB没法上传，模版都是100MB的如果使用自行修改大小到合适。

下载后打开俩个磁盘，拷贝对应的目录到磁盘中。运行QuantOsUSB里面的QuantOsUSB install应该可以一次安装配置完毕。

双击磁盘根目录QuantOsUSB.app开启就是了。dada磁盘可以单独使用。

20181206更新

不同量化环境独立版本：需要拷贝到应用程序去使用，双击app即可！
Krqalpha.app/Kquantaxis.app/Kabu.app/Kdevilyuan.app/Khikyuu.app/Kivy.app

整体稀疏磁盘打包版本见网盘链接：
https://pan.baidu.com/s/1_RVBJVmSH570TepgZROW5A 

安装配置源码在：http://github.com/pm58/QuantOsUSB

20181201更新

稀疏磁盘打包版本说明：
属于隔离版本。不同环境不同配置各种环境独立。用相关的run终端去启动进入web。

稀疏磁盘捆绑打包说明：
属于统一环境，统一了环境一次都在app中运行终端通过web进入。
实验性质。可能有环境bug，一个app搞定mongdb启动和wen启动。站空间小很多。
建议吧data放容量大的硬盘空间，通过更新数据库逐渐占满50GB空间。quantaxis分时数据更新大约站33GB。
吧QuantOsUSB放速度快的硬盘空间。
双击QuantOsUSB。app一次启动mongodb和web环境。
data盘50GB空间可以用，
QuantOsUSB磁盘空间20GB可用。
如果不可读写用点击磁盘右键显示简介，加上电脑用户读写权限即可。

注意：磁盘名称不能修改。修改后系统路径错误！！！！
运行时候把data和QuantOsUSB同时打开就行了
运行QuantOsUSB。app，如果出错，运行一下QuantOsUSB inatall 安装基本的环境
启动后可以双击RUN-mongo 输入show dbs 查询数据库状态或者用Robo3T。app也行。
mongodb支持ipv6访问和通过电脑ip路由器访问。


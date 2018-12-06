-# QuantOsUSB
QuantOsUSB

==============================================================================
不同量化环境独立版本：Krqalpha.app/Kquantaxis.app/Kabu.app/Khikyuu.app/Kivy.app
和 整体稀疏磁盘打包版本见网盘链接：
https://pan.baidu.com/s/1_RVBJVmSH570TepgZROW5A 

安装配置源码在：http://github.com/pm58/QuantOsUSB

==========================20181206============================================
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

！！！！！！！！！！！！！！！！一下说明已经作废，只做参考～～～～～～～～～～～～～～～～～～～～～
+++++++++++++++++++++++++++++++++++++++20181111++++++++++++++++++++++++++++++++

从新打包APP用pip管理方式，
支持：
spyder	        test
notebook	ok
jupyterlab	test	
tensorboard	test
tensorboardX	test
---------------------------------------名称-------------------------------------
通过kivy打包的量化QUANTOS的python3版本APP包 ---MacOS系统支持。
------------------------------------APP安装设置----------------------------------
1.将kivy.app拖到程序目录 Applications 去，双击install-kivy，安装kivy，
  最后测试输入import kivy显示版本说明安装成功，@@@推荐！！！
2.如果上述不成功，终端执行如下命令建立命令连接：如果安装不成功请在 ln 前面加 sudo
ln -s /Applications/Kivy.app/Contents/Resources/script /usr/local/bin/kivy
以上kivy处可以改名为kivy2或者kivy3名称，这样可以分别管理三套kivy了！！
kivy2/3的dmg已在 QuantOsUSB 中，或自行去kivy.org下载。
如果安装不成功：
cd /usr/local/bin/
删除旧的kivy链接，重新运行 2.
三个app如果都拖到 Applications 里面， 可以同时使用不同版本。
比如ln -s /Applications/Kivy2.app/Contents/Resources/script /usr/local/bin/kivy2
或者ln -s /Applications/Kivy3.app/Contents/Resources/script /usr/local/bin/kivy3
拷贝在app目录中改名后，上面的 kivy 划线部分同样改名。
同时提供：kivy.app 内置rqalpha/quantaxis/abupy/hikyu量化环境，
通过run-XXXX进入不同的环境开启notebook使用。
3.quantaxis需要mongodb支持，双击install-brew+ta-lib+mongodb 安装系统环境，建议安装。
-------------------------------------------------------------------------------
然后终端命令测试输入：
$> kivy           ##进入显示当前python版本框架
Python 3.6.5 (default, Jun 18 2018, 16:36:13)
[GCC 4.2.1 Compatible Apple LLVM 9.1.0 (clang-902.0.39.1)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
$>>> import kivy  ##测试框架显示正常如下：
[INFO   ] [Logger      ] Record log in /Applications/Kivy.app/Contents/Resources/.kivy/logs/kivy_18-11-08_8.txt
[INFO   ] [Kivy        ] v1.10.1
[INFO   ] [Python      ] v3.6.5 (default, Jun 18 2018, 16:36:13)
[GCC 4.2.1 Compatible Apple LLVM 9.1.0 (clang-902.0.39.1)]
--------------------------------模块安装及卸载--------------------------------  
双击程序 run-venv/abupy/rqalpha/quantaxis/hikyuu。。。 自动启动不同环境，更新股票数据，
然后依次开启notebook浏览器编辑器可以通过新建终端管理环境。最后退出隔离环境。
可以通过浏览器开启内部终端安装和管理模块，举例：pip install pip==9.0.1
---------------------------------------运行方式----------------------------------
1.浏览器终端通过 python XXXX.py 直接运行调试程序。
2.如果不通过 run-venv/rqalpha/quantaxis/hikyuu。。。 运行，
  可以通过终端使用命令开启内置 kivy 的 venv 激活运行：
   source /Applications/Kivy.app/Contents/Resources/xxxx/bin/activate#启动隔离环境
                                                    
   xxxx此处可以替换abupy/rqalpha/quantaxis。。。启动不同的隔离环境
   
   jupyter notebook ##启动 notebook 命令

   deactivate  ##退出venv结束命令

------------------------------------安装模块说明---------------------------------
1.quantaxis 回测框架，内置mongodb/mongo，notebook终端管理，数据库在data中。
2.1rqalpha 回测数据框架 python  rqalpha 获取帮助。rqalpha update-bundle
	   更新最新股票数据在app的data目录下。
2.2tushare 在线数据模块。
2.3funcat 通达信指标模块选股计算回测模块。
2.4pytdx 通达信数据模块。
-------------------------------编译测试模块--------------------------------------
A。pytest py测试工具。 输入pytest 测试当前目录的tests下的py程序模版。
B。buildozer 移植编译osx/android/ios/osx模块,例：kivy -m buildozer andriod debug run
C。python-for-android  安卓移植编译模块。
D。kivy-ios 移植编译ios模块，需要xcode 10 版本的支持和brew。
---------------------------------已安装模块列表命令-------------------------------
(venv)>> pip list   ##列表当前隔离环境
python xxxx.py    ##运行当前隔离环境下的程序。
/Applications/Kivy.app/Contents/ 目录分支说明：
Resources虚拟机环境
        |
        venv的原始 app原始的版本。
        |
        venv 基础主隔离环境标配（pytest+ipyhonn+jupyter notebook++python3.6+pip9.0.1等。。。）
        |
        test 测试用途，克隆venv基础
        |
        abupy      abu量化环境，克隆venv基础。
        |
        rqalpha    rqalpha环境，克隆venv基础。
        |
        quantaxis  quantaxis环境，克隆venv基础
        |
	hikyuu     hikyuu环境，克隆venv基础
	|。。。     请自行拷贝venv改名添加。

data  数据库  已经更新总计占大约1.5GB  
	|
	abu 股票数据 6年日线数据 500M
	|
	rqalpha 股票数据  全部年日线数据 300M
	|
	mongodb 数据  全部日线数据 1.5GB
	|
	。。。。。。

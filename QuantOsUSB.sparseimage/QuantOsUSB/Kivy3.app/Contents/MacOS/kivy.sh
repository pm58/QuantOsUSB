
echo "======================启动 kivy.app 终端========================"
echo "===检查kivy路径==="
which kivy

echo "列表转换目录"
cd /Volumes/QuantOsUSB
ls

echo "kivy -m pip list 列表 kivy 环境"
#kivy -m pip list

echo "===测试QuantQsUSB是否安装成功，输入 import kivy 显示状态信息是否正常==="
echo "===使用组合键 control+d 可以退出==="
#kivy

echo "===进入Kivy.APP venv 虚拟容器==="
source /Volumes/QuantOsUSB/QuantOsUSB/kivy.app/Contents/Resources/venv/bin/activate

echo "==kivy -m pip list ，列表 kivy 环境=="
#kivy -m pip list

echo "==python -m pip list ，列表 python 环境=="
#python -m pip list

echo "==pip list ，列表 venv 环境=="
#pip list

echo "===测试QuantQsUSB是否安装成功，输入 import kivy 显示状态信息是否正常==="
echo "===使用组合键 control+d 可以退出==="
#kivy

echo "===测试QuantQsUSB是否安装成功，输入 import kivy 显示状态信息是否正常==="
echo "===使用组合键 control+d 可以退出==="
#python

echo "==同时启动Rqalpha数据更新+QUANTAXIS+启动Notebook+启动Jupyter lab=="
echo "===使用组合键 control+c 多次可以退出==="
rqalpha update-bundle & jupyter notebook & jupyter lab

echo "==deactivate 虚拟容器 venv 退出=="
deactivate
echo "==系统完全退出关闭终端=="

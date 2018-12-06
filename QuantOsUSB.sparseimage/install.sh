
echo "======================安装brew + talib模块支持========================"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ta-lib
brew install mongodb
echo "======================删除旧的kivy关联========================"
rm /usr/local/bin/kivy
#rm /usr/local/bin/kivy2
#rm /usr/local/bin/kivy3

echo "======================建立 QuantOsUSB 的 kivy.app 终端关联========================"
ln -s /Volumes/QuantOsUSB/QuantOsUSB/kivy.app/Contents/Resources/script  /usr/local/bin/kivy
#ln -s /Volumes/QuantOsUSB/QuantOsUSB/kivy2.app/Contents/Resources/script  /usr/local/bin/kivy2
#ln -s /Volumes/QuantOsUSB/QuantOsUSB/kivy3.app/Contents/Resources/script  /usr/local/bin/kivy3

which kivy
which kivy2
which kivy3

echo "===修复 matplotlibrc 文件缺失造成 matplotlib 报错问题==="
ls ~/.matplotlib
cp /Volumes/QuantOsUSB/QuantOsUSB/Kivy.app/.matplotlib/matplotlibrc ~/.matplotlib/
ls ~/.matplotlib

echo "===测试kivy是否安装成功，输入 import kivy 显示状态信息是否正常==="
echo "===使用组合键 control+D 可以退出==="
cd /Volumes/QuantOsUSB
ls
kivy -m pip install jupyter notebook
kivy -m pip install jupyter lab
#kivy -m pip list

#kivy2 -m pip install jupyter notebook
#kivy2 -m pip list

#kivy3 -m pip install jupyter notebook
#kivy3 -m pip list

#kivy -m notebook
#kivy2 -m notebook
#kivy3 -m notebook

echo "===测试qtusb是否安装成功，输入 import kivy 显示状态信息是否正常==="
echo "===使用组合键 control+D 可以退出==="
kivy
kivy2
kivy3

source /Volumes/QuantOsUSB/QuantOsUSB/kivy.app/Contents/Resources/venv/bin/activate
python -m pip install -r /Volumes/QuantOsUSB/QuantOsUSB/kivy.txt
python -m pip install -r /Volumes/QuantOsUSB/QuantOsUSB/kivy.txt
python -m pip install -r /Volumes/QuantOsUSB/QuantOsUSB/kivy.txt
deactivate

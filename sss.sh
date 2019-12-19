# 接收用户输入选择语言
# 0 回到最初版本dicc.txt
# 1 核心资产扫描
# 2 路径扫描
# 3 php扫描
# 4 asp/x扫描
# 5 java扫描
# 6 全部无重大字典扫描


echo "Please Use:"
echo "[0]:Source"
echo "[1]:Core"
echo "[2]:Dir"
echo "[3]:PHP"
echo "[4]:ASP/x"
echo "[5]:JSP"
echo "[6]:ALL"
echo "waiting input:"
read search


# 根据读取所选内容加载字典
name="wait"
if [ $search == 0 ];then
	name="Source"
	rm db/dicc.txt
	cp db/dicc.txt.src db/dicc.txt

elif [ $search == 1 ];then
	name="Core"
	rm db/dicc.txt
	cp db/dicc.txt.core db/dicc.txt

elif [ $search == 2 ];then
	name="Dir"
	rm db/dicc.txt
	cp db/dicc.txt.dir db/dicc.txt

elif [ $search == 3 ];then
	name="PHP"
	rm db/dicc.txt
	cp db/dicc.txt.php db/dicc.txt

elif [ $search == 4 ];then
	name="ASP/x"
	rm db/dicc.txt
	cp db/dicc.txt.asp db/dicc.txt

elif [ $search == 5 ];then
	name="JSP"
	rm db/dicc.txt
	cp db/dicc.txt.jsp db/dicc.txt

elif [ $search == 6 ];then
	name="ALL"
	rm db/dicc.txt
	cp db/dicc.txt.all db/dicc.txt

else
	echo "Input "Error!
	exit 0
fi
echo "Use $search : $name Success! :)"

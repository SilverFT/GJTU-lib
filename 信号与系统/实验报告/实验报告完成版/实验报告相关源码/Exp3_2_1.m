clear all;%%清除工作空间的所有变量，函数，和MEX文件
clc;%%清除命令窗口的内容
delta=0.011;%%初始化步长
t=-1:delta:1;%%以-1为起点,以1为终点,以delta为步长的一维矩阵
f1=stepfun(t,0)-stepfun(t,1);%%用单位阶跃函数生成f1
f2=stepfun(t,-1)-stepfun(t,0);%%用单位阶跃函数生成f2
y1=conv(f1,f1)*delta;%%计算需要序列卷积
n=length(y1);%%数组长度
subplot(311);%%绘制图案
plot((0:n-1)*delta-2,y1);%%绘制离散数据
axis([-3,3,-0.5,1.5]);%%设置当前坐标轴x轴和y轴的限制范围
grid on;%%显示或隐藏坐标区网格线
subplot(312);%%绘制图案
y2=conv(f2,f2)*delta;%%计算需要序列卷积
n=length(y2);%%数组长度
plot((0:n-1)*delta-2,y2);%%绘制离散数据
axis([-3,3,-0.5,1.5]);%%设置当前坐标轴x轴和y轴的限制范围
grid on;%%显示或隐藏坐标区网格线
subplot(313);%%绘制图案
y3=conv(f1,f2)*delta;%%计算需要序列卷积
n=length(y1);%%数组长度
plot((0:n-1)*delta-2,y3);%%绘制离散数据
axis([-3,3,-0.5,1.5]);%%设置当前坐标轴x轴和y轴的限制范围
grid on;%%显示或隐藏坐标区网格线

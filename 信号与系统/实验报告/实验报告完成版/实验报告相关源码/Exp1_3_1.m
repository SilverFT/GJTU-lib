clear all;%%清除工作空间的所有变量，函数，和MEX文件
clc;%%清除命令窗口的内容
t= -10:0.1:10;%%以-10为起点,以10为终点,以0.1为步长的一维矩阵
width=2;%%矩形长度
ft=rectpuls(t,width);%%采样时间处t；一个width的矩形w；
plot(t,ft);%%绘制图形
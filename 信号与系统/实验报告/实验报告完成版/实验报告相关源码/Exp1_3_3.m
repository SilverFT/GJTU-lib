clear all;%%清除工作空间的所有变量，函数，和MEX文件
clc;%%清除命令窗口的内容
k=-50:50;%%x轴范围
delta=[zeros(1,50),1,zeros(1,50)];%%创建全零数组;单位脉冲
stem(k,delta)%%绘制序列
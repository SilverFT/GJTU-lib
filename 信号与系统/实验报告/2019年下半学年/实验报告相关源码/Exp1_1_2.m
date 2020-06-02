clear all;%%清除工作空间的所有变量，函数，和MEX文件
clc;%%清除命令窗口的内容
syms f(t)%%声明符号函数
f=exp(-t/2)%%设置指数
ezplot(f,[-6,6])%%绘图函数
f1=[1 2 -1 -3 -2 4];%%初始化参数
k1=1:6;%%1开始步长为6
f2=ones(1,5);%%1x5以0为元素的矩阵
k2=-2:2;%%-2开始步长为2
[f,k]=dconv(f1,f2,k1,k2);
function [f,k]=dconv(f1,f2,k1,k2)%%定义函数
f=conv(f1,f2);%%计算序列f1与f2的卷积和f
k0=k1(1)+k2(1);%%计算序列f非零样值的起点位置
k3=length(f1)+length(f2)-2;%%%计算卷积和f的非零样值的宽度
k=k0:k0+k3;%%确定卷积和f非零样值的序列向量
subplot(2,2,1)%%绘制图案
stem(k1,f1)%%绘制离散数据
title('f1(k)')%%设置标题
xlabel('k')%%设置自变量
ylabel('f1(k)')%%设置因变量
subplot(2,2,2)%%绘制图案
stem(k2,f2)%%绘制离散数据
title('f2(k)')%%设置标题
xlabel('k')%%设置自变量
ylabel('f2(k)')%%设置因变量
subplot(2,2,3)%%绘制图案
stem(k,f);%%绘制离散数据
title('f1(k)与f2(k)的卷积和f(k)')%%设置标题
xlabel('k')%%设置自变量
ylabel('f(k)')%%设置因变量
end
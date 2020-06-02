
function y=filter(b,a,x)%%定义函数
k=-100:100;
uk=[zeros(1,100),ones(1,101)];%%生成序列
b=[1,1];
a=[1,-0.25,0.5];
x=((1/2).^k).*uk;%%输入序列
y=filter(b,a,x);%%系统响应
h=impz(b,a,k);%%数字滤波器的脉冲响应
stem(k,h);%%绘制图形
xlabel('k');%%重命名x轴
title('单位序列响应')%%设置标题
figure(2);%%创建新窗口
stem(k,y);%%绘制图形
title('系统响应')%%设置标题
xlabel('k')%%重命名x轴
end

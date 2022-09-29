
%非线性模型 y=a*e^(b/x) 钢铁腐蚀增大容积
function yhat = volum(beta,x)
yhat = beta(1)*exp(beta(2)./x);

x = 2:16;
y = [6.42 8.20 9.58 9.5 9.7 10 9.93 9.99 10.49 10.59...
    10.60 10.80 10.60 10.90 10.76];
beta0 = [8 2]';

%求回归系数
[beta,r,J] = nlinfit(x',y','volum',beta0);

%预测及作图
[YY,delta] = nlpredci('volum',x',beta,r,J); %nlpredci(）——非线性模型置信区间预测
plot(x,y,'k+',x,YY,'r');
% [ypred,delta] = nlpredci(FUN,inputs,beta,resids,J)
% ypred——预测值
% delta——非线性最小二乘法估计的置信区间长度的一半，当resids长度超过beta的长度并且J的列满秩时，置信区间的计算是有效的。
% [ypred-delta，ypred+delta]——置信度为95%的置信区间
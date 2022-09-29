
%������ģ�� y=a*e^(b/x) ������ʴ�����ݻ�
function yhat = volum(beta,x)
yhat = beta(1)*exp(beta(2)./x);

x = 2:16;
y = [6.42 8.20 9.58 9.5 9.7 10 9.93 9.99 10.49 10.59...
    10.60 10.80 10.60 10.90 10.76];
beta0 = [8 2]';

%��ع�ϵ��
[beta,r,J] = nlinfit(x',y','volum',beta0);

%Ԥ�⼰��ͼ
[YY,delta] = nlpredci('volum',x',beta,r,J); %nlpredci(������������ģ����������Ԥ��
plot(x,y,'k+',x,YY,'r');
% [ypred,delta] = nlpredci(FUN,inputs,beta,resids,J)
% ypred����Ԥ��ֵ
% delta������������С���˷����Ƶ��������䳤�ȵ�һ�룬��resids���ȳ���beta�ĳ��Ȳ���J��������ʱ����������ļ�������Ч�ġ�
% [ypred-delta��ypred+delta]�������Ŷ�Ϊ95%����������
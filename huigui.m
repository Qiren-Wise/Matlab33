clc;clear all

%��������
x = [143 145 146 147 149 150 153 154 155 156 157 158 159 160 162 164]'; %����
X = [ones(16,1),x];  %��һ����1 �ڶ�����x
Y = [88 85 88 91 92 93 93 95 96 98 97 96 98 99 100 102]'; %�ȳ�

%�ع����������
[b,bint,r,rint,stats] = regress(Y,X); %X���滹�Ц�����=0.05
% b,bint,stats  �����������

%�в���� �в���ͼ
rcoplot(r,rint);

%Ԥ�⼰��ͼ
z = b(1) + b(2)*2; % 2 �������κ���
plot(x,Y,'k+',x,z,'r');
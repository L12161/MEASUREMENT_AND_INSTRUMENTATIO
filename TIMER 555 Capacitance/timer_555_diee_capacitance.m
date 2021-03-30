%Prog 5
%Monostable timer aided capacitance measurement
clear all
close all
clc
f = 500;
tmax = 10/f;
E = 5;
tstep = 0.0001;
t = 0:tstep:tmax;
w = 2*pi*f;
y1 = sin(w*t);
N = length(y1);
% Square-wave generator
for n=1:N;
if y1(n)>0
y2(n)=E-0.2;
else y2(n)=0;
end
end
y3 = diff(y2);
R = 1e+3;
C = 1e-6;
tw = 1.1*R*C;
kmax = tw/tstep;
% Monostable timer routine
for n=1:N
y4(n) = 0;
end
N1 = length(y3);
for n=1:N1
if y3(n)<0
for k=1:kmax
y4(n+k)=E-0.2;
end
end
end
N2 = length(y4);
t1 = (1:N2)*tstep;
14
plot(t1,y4);
xlabel('Time is seconds');
ylabel('Magnitude (V)');
axis([0 0.02 -0.5 5]);
%EEE 428 exp1
clear all
close all
clc
E=12;
Sv=0.01;
delta=0.001;
for n=1:2000
 R_S(n)=n*delta;
 SB(n)=Sv*E/(R_S(n)+1/(R_S(n)+2));
end
plot(R_S,SB);
grid on
title('wheatstone bridge sensitivity curve')
xlabel('Ratio (R/S)')
ylabel('Sensitivity S_B')
E = 12; 
R = 0.5e+6;
C = 4.7e-6;

RC = R*C;
tmax = 10;
t = 0:0.01:tmax; 
N = tmax / 0.01;
V = E*exp(-t/RC);
subplot(2,1,1), plot (t,V);
grid on
title('High Resistance Measurement');
xlabel('time(seconds)');
ylabel('voltage across capacitor');
subplot(2,1,2), plot(t,log(V));
grid on
xlabel('time(seconds)');
ylabel('log_eV')
Rx = 0.01*N/(C*log(E/V(N+1)))

clear all; clc;
t = 0:0.01:10;
N = t(end)/ 0.01;
E = 12;
R = 1e6;
Rsw = 1e5;
C = 1e-6;
RC = R*C;
for i = 1:(N+1)
    if (i <= 2/ 0.01)
        V(i) = E;
    elseif(i> 2/0.01)
        Vinf = (R / (R + Rsw))*E ;
        V(i) = Vinf + (E - Vinf)* exp (-(i - 2/0.01)/ (RC/0.01));
    end 
end
plot (t, V)
grid on 
title('High resistance measurement');
xlabel('Time(seconds)');
ylabel('Voltage across capacitor');


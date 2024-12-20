close all;

n = 11;
L = 2;
E = 68*10^9;
I = 2.059 *10^-6;
P = linspace(0,222.4,n);
v = zeros(1,n-1);


for i = 1:n
    v(i) = (1/(E*I)) * ( ( (P(i) * L^3) / 8) - 55.6*L);
    v(i) = v(i) * 10^3 +0.8;
end

figure()
hold on
title('Equivelent Beam vs. FEM Midspan Deflection vs. Load')
plot(P, v);
plot(FEM(1,:),FEM(2,:));
grid on
legend('EQ Beam', "FEM")
xlabel('Load [N]')
ylabel('Deflection [mm]')
hold off

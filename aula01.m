clear; clc;
h = 0.001;
x(1) = 1;
y(1) = 1;
xn = 3;
n = (xn - x(1))/h;
for i = 1:n-1
    y(i+1) = y(i) + edo(x(i),y(i))*h;
    x(i+1) = x(i) + h;
end
disp(y(n))

%Solução analítica
ya = (1./(2.*x.^10 - x.^8)).^(1/4);
yax = (1/(2*xn^10 - xn^8))^(1/4);
fprintf('Solução analítica: %.6f', yax)
plot(x,y, x,ya)
legend('Solução Numérica', 'Solução Analítica')

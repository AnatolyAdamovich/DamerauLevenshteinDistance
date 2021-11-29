N = linspace(60,180,13)
dispersion = [0.0347 0.0237 0.0404 0.0226 0.025 0.033 0.0382 0.0263 0.0356 0.0241 0.0361 0.0199 0.0229]
exception = [0.4886 0.5152 0.5893 0.4877 0.5621 0.5634 0.5152 0.5205 0.6013 0.5471 0.4715 0.4069 0.5661]
p_except = polyfit(N, exception, 5)


p= polyfit(N, dispersion, 8)
f = polyval(p, N)
R2 = (f-mean(dispersion)).^2 / (dispersion-mean(dispersion)).^2

f = polyval(p, [60:180])
plot(N, dispersion, 'ro', [60:180],  f, 'g-')
clc;
clear;

g = @(x) exp(-x);

tol = 1e-6;   
x0 = 0;       
max_iter = 100; 

iter = 0;
error_rel = inf;

fprintf('Método de Punto Fijo:\n');
while error_rel > tol && iter < max_iter
    x1 = g(x0);
    error_rel = abs((x1 - x0) / x1);
    x0 = x1;
    iter = iter + 1;
    
    fprintf('Iteración %d: x = %.10f, Error = %.10e\n', iter, x1, error_rel);
end

fprintf('Solución aproximada: x = %.10f en %d iteraciones\n', x1, iter);

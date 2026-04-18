clc; clear; close all;

fprintf('===== 5.5 START =====\n\n');

fprintf('--- PART A START ---\n\n');

fprintf('P_N(l_N,Omega) = Z_L*U_N(l_N,Omega)\n');
fprintf('R_N = rho*c/A_N\n');
fprintf('u_N^-(t + tau_N) <-> U_N^-(Omega)e^(j*Omega*tau_N)\n');
fprintf('u_N^+(t - tau_N) <-> U_N^+(Omega)e^(-j*Omega*tau_N)\n\n');

fprintf('U_N^-(Omega)e^(j*Omega*tau_N) = ((Z_L - R_N)/(Z_L + R_N))*U_N^+(Omega)e^(-j*Omega*tau_N)\n\n');

fprintf('This is the required frequency-domain relation between the delayed reflected and incident waves\n');
fprintf('Substituting R_N = rho*c/A_N gives the part (a) result in the book''s variables.\n\n');

fprintf('--- PART A END ---\n\n');

fprintf('--- PART B START ---\n\n');

fprintf('Z_L(s) = s*R_r*L_r/(R_r + s*L_r)\n');
fprintf('R_N = rho*c/A_N\n\n');

fprintf('U_N^-(s)e^(s*tau_N) = ((Z_L(s) - R_N)/(Z_L(s) + R_N))*U_N^+(s)e^(-s*tau_N)\n');
fprintf('(Z_L(s) + R_N)U_N^-(s)e^(s*tau_N) = (Z_L(s) - R_N)U_N^+(s)e^(-s*tau_N)\n\n');

fprintf('(s*R_r*L_r/(R_r + s*L_r) + R_N)U_N^-(s)e^(s*tau_N) = (s*R_r*L_r/(R_r + s*L_r) - R_N)U_N^+(s)e^(-s*tau_N)\n');
fprintf('Multiply by (R_r + s*L_r)\n\n');

fprintf('(s*R_r*L_r + R_N(R_r + s*L_r))U_N^-(s)e^(s*tau_N) = (s*R_r*L_r - R_N(R_r + s*L_r))U_N^+(s)e^(-s*tau_N)\n');
fprintf('(R_N*R_r + s*L_r(R_r + R_N))U_N^-(s)e^(s*tau_N) = (-R_N*R_r + s*L_r(R_r - R_N))U_N^+(s)e^(-s*tau_N)\n\n');

fprintf('L^{-1}{sF(s)} = d/dt f(t)\n\n');

fprintf('L_r(R_r + R_N)d/dt[u_N^-(t + tau_N)] + R_N*R_r*u_N^-(t + tau_N)\n');
fprintf('= L_r(R_r - R_N)d/dt[u_N^+(t - tau_N)] - R_N*R_r*u_N^+(t - tau_N)\n\n');

fprintf('L_r(R_r + rho*c/A_N)d/dt[u_N^-(t + tau_N)] + (rho*c/A_N)*R_r*u_N^-(t + tau_N)\n');
fprintf('= L_r(R_r - rho*c/A_N)d/dt[u_N^+(t - tau_N)] - (rho*c/A_N)*R_r*u_N^+(t - tau_N)\n\n');

fprintf('This is the required ordinary differential equation relating the delayed reflected and incident waves.\n');
fprintf('It comes from substituting the radiation load model into the part (a) relation and then taking the inverse Laplace, transform satisfying the equation.\n\n');

fprintf('--- PART B END ---\n\n');

fprintf('===== 5.5 END =====\n');
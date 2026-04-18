clc; clear; close all;

fprintf('===== 5.7 START =====\n\n');

fprintf('U_1^+(Omega) = ((1 + r_G)/2)*U_G(Omega) + r_G*U_1^-(Omega)\n');
fprintf('U_2^+(Omega) = (1 + r_1)*U_1^+(Omega)*exp(-1j*Omega*tau_1) + r_1*U_2^-(Omega)\n');
fprintf('U_1^-(Omega)*exp(1j*Omega*tau_1) = -r_1*U_1^+(Omega)*exp(-1j*Omega*tau_1) + (1 - r_1)*U_2^-(Omega)\n');
fprintf('U_L(Omega) = (1 + r_L)*U_2^+(Omega)*exp(-1j*Omega*tau_2)\n');
fprintf('U_2^-(Omega)*exp(1j*Omega*tau_2) = -r_L*U_2^+(Omega)*exp(-1j*Omega*tau_2)\n\n');

fprintf('U_2^+(Omega) = U_L(Omega)*exp(1j*Omega*tau_2)/(1 + r_L)\n');
fprintf('U_2^-(Omega) = -r_L*U_L(Omega)*exp(-1j*Omega*tau_2)/(1 + r_L)\n\n');

fprintf('U_1^+(Omega) = (U_2^+(Omega) - r_1*U_2^-(Omega))*exp(1j*Omega*tau_1)/(1 + r_1)\n');
fprintf('U_1^+(Omega) = U_L(Omega)*exp(1j*Omega*(tau_1 + tau_2))*(1 + r_1*r_L*exp(-1j*2*Omega*tau_2))/((1 + r_L)*(1 + r_1))\n\n');

fprintf('U_1^-(Omega)*exp(1j*Omega*tau_1) = -r_1*U_1^+(Omega)*exp(-1j*Omega*tau_1) + (1 - r_1)*U_2^-(Omega)\n');
fprintf('U_1^-(Omega) = U_L(Omega)*exp(-1j*Omega*tau_1)*(-r_1*exp(1j*Omega*tau_2) - r_L*exp(-1j*Omega*tau_2))/((1 + r_L)*(1 + r_1))\n\n');

fprintf('U_G(Omega) = 2*U_1^+(Omega)/(1 + r_G) - 2*r_G*U_1^-(Omega)/(1 + r_G)\n');
fprintf(['U_G(Omega) = 2*U_L(Omega)*exp(1j*Omega*(tau_1 + tau_2))*(1 + r_1*r_L*exp(-1j*2*Omega*tau_2) + r_1*r_G*exp(-1j*2*Omega*tau_1) + r_L*r_G*exp(-1j*2*Omega*' ...
    '(tau_1 + tau_2)))/((1 + r_G)*(1 + r_L)*(1 + r_1))\n\n']);

fprintf('U_L(Omega)/U_G(Omega) = 0.5*(1 + r_G)*(1 + r_L)*(1 + r_1)*exp(-1j*Omega*(tau_1 + tau_2))\n');
fprintf('                      / (1 + r_1*r_G*exp(-1j*2*Omega*tau_1) + r_1*r_L*exp(-1j*2*Omega*tau_2) + r_L*r_G*exp(-1j*2*Omega*(tau_1 + tau_2)))\n\n');

fprintf('5.7 ANSWER FOUND\n');
fprintf('This is the frequency-domain transfer function between the input and output volume velocities.\n');
fprintf('It matches the wave/reflection-coefficient form used in class.\n\n');

fprintf('===== 5.7 END =====\n');
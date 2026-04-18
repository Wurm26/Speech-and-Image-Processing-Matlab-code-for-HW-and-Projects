clc; clear; close all;

syms r th z

fprintf('===== 5.12 START =====\n\n');

fprintf('--- PART A START ---\n\n');

fprintf('V_k(z) = (1 - 2r cos(th) + r^2) / (1 - 2r cos(th)z^(-1) + r^2 z^(-2))\n');
fprintf('r = |z_k|\n');
fprintf('th = theta_k\n\n');

fprintf('1 - 2r cos(th)z^(-1) + r^2 z^(-2) = 0\n');
fprintf('z^2 - 2r cos(th)z + r^2 = 0\n');
fprintf('z = r exp(+j th), r exp(-j th)\n\n');

fprintf('z_1 = |z_k|exp(j theta_k)\n');
fprintf('z_2 = |z_k|exp(-j theta_k)\n\n');

fprintf('z = exp(sT)\n');
fprintf('s = (1/T)ln(z)\n');
fprintf('s_1 = (1/T)ln(|z_k|) + j(theta_k/T)\n');
fprintf('s_2 = (1/T)ln(|z_k|) - j(theta_k/T)\n\n');

fprintf('Using |z_k| = exp(-pi B_k T), theta_k = 2pi F_k T\n');
fprintf('s_1 = -pi B_k + j2pi F_k\n');
fprintf('s_2 = -pi B_k - j2pi F_k\n\n');

fprintf('PART A ANSWER FOUND\n');
fprintf('The z-plane poles are at z = |z_k|e^(+/-j theta_k), and the corresponding analog poles are at s = (1/T)ln(|z_k|) +/- j(theta_k/T).\n');
fprintf(' this then becomes s = -pi B_k +/- j2pi F_k.\n\n');

fprintf('--- PART A END ---\n\n');

fprintf('--- PART B START ---\n\n');

fprintf('Y_k(z)/X_k(z) = (1 - 2r cos(th) + r^2) / (1 - 2r cos(th)z^(-1) + r^2 z^(-2))\n');
fprintf('Y_k(z)(1 - 2r cos(th)z^(-1) + r^2 z^(-2)) = X_k(z)(1 - 2r cos(th) + r^2)\n\n');

fprintf('y_k[n] - 2r cos(th)y_k[n-1] + r^2 y_k[n-2]\n');
fprintf('= (1 - 2r cos(th) + r^2)x_k[n]\n\n');

fprintf('y_k[n] - 2|z_k|cos(theta_k)y_k[n-1] + |z_k|^2 y_k[n-2]\n');
fprintf('= (1 - 2|z_k|cos(theta_k) + |z_k|^2)x_k[n]\n\n');

fprintf('PART B ANSWER FOUND\n');
fprintf('This is the required difference equation relating the output y_k[n] to the input x_k[n].\n');

fprintf('--- PART B END ---\n\n');

fprintf('--- PART C START ---\n\n');

fprintf('y_k[n] = (1 - 2r cos(th) + r^2)x_k[n] + 2r cos(th)y_k[n-1] - r^2 y_k[n-2]\n\n');

fprintf('Three multipliers:\n');
fprintf('m_1 = 1 - 2r cos(th) + r^2\n');
fprintf('m_2 = 2r cos(th)\n');
fprintf('m_3 = -r^2\n\n');

fprintf('m_1 = 1 - 2|z_k|cos(theta_k) + |z_k|^2\n');
fprintf('m_2 = 2|z_k|cos(theta_k)\n');
fprintf('m_3 = -|z_k|^2\n\n');

fprintf('PART C ANSWER FOUND\n');
fprintf('The three-multiplier implementation comes directly from the recursion in part (b).\n');
fprintf('The gains are the input multiplier, the first feedback multiplier, and the second feedback multiplier.\n\n');

fprintf('--- PART C END ---\n\n');

fprintf('===== 5.12 END =====\n');
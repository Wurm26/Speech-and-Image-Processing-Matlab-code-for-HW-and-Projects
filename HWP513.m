clc; clear; close all;

fprintf('===== 5.13 START =====\n\n');

fprintf('--- PART A START ---\n\n');

fprintf('V(z) = G / prod_{k=1}^N (1 - z_k z^(-1))\n\n');
fprintf('V(z) = sum_{k=1}^M [ G_k/(1 - z_k z^(-1)) + G_k^*/(1 - z_k^* z^(-1)) ]\n\n');

fprintf('G_k = lim_{z^(-1)->1/z_k} (1 - z_k z^(-1))V(z)\n');
fprintf('G_k = G / ((1 - z_k^*/z_k) * prod_{m~=k}(1 - z_m/z_k)(1 - z_m^*/z_k))\n\n');

fprintf('PART A ANSWER FOUND\n');
fprintf('The coefficients G_k are the residues of V(z) at the poles z_k.\n');
fprintf('This gives the required partial-fraction expansion in conjugate-pair form.\n\n');

fprintf('--- PART A END ---\n\n');

fprintf('--- PART B START ---\n\n');

fprintf('G_k/(1 - z_k z^(-1)) + G_k^*/(1 - z_k^* z^(-1))\n');
fprintf('= (G_k(1 - z_k^* z^(-1)) + G_k^*(1 - z_k z^(-1))) / ((1 - z_k z^(-1))(1 - z_k^* z^(-1)))\n\n');

fprintf('= ((G_k + G_k^*) - (G_k z_k^* + G_k^* z_k)z^(-1)) / (1 - (z_k + z_k^*)z^(-1) + z_k z_k^* z^(-2))\n\n');

fprintf('z_k = |z_k|exp(j*theta_k)\n');
fprintf('z_k + z_k^* = 2|z_k|cos(theta_k)\n');
fprintf('z_k z_k^* = |z_k|^2\n\n');

fprintf('V(z) = sum_{k=1}^M (B_k - C_k z^(-1)) / (1 - 2|z_k|cos(theta_k)z^(-1) + |z_k|^2 z^(-2))\n\n');

fprintf('B_k = G_k + G_k^* = 2*Re{G_k}\n');
fprintf('C_k = G_k z_k^* + G_k^* z_k = 2*Re{G_k z_k^*}\n\n');

fprintf('PART B ANSWER FOUND\n');
fprintf('Combining each conjugate pole pair produces one real second-order section.\n');
fprintf('The numerator constants are B_k = 2Re{G_k} and C_k = 2Re{G_k z_k^*}.\n\n');

fprintf('--- PART B END ---\n\n');

fprintf('--- PART C START ---\n\n');

fprintf('For M = 3:\n\n');

fprintf('V_1(z) = (B_1 - C_1 z^(-1)) / (1 - 2|z_1|cos(theta_1)z^(-1) + |z_1|^2 z^(-2))\n');
fprintf('V_2(z) = (B_2 - C_2 z^(-1)) / (1 - 2|z_2|cos(theta_2)z^(-1) + |z_2|^2 z^(-2))\n');
fprintf('V_3(z) = (B_3 - C_3 z^(-1)) / (1 - 2|z_3|cos(theta_3)z^(-1) + |z_3|^2 z^(-2))\n\n');

fprintf('V(z) = V_1(z) + V_2(z) + V_3(z)\n\n');

fprintf('x[n] --> section 1 --> y_1[n]\n');
fprintf('x[n] --> section 2 --> y_2[n]\n');
fprintf('x[n] --> section 3 --> y_3[n]\n');
fprintf('y[n] = y_1[n] + y_2[n] + y_3[n]\n\n');

fprintf('PART C ANSWER FOUND\n');
fprintf('The M = 3 parallel form is three real second-order sections driven by the same input and summed at the output.\n');
fprintf('Each section corresponds to one conjugate pole pair.\n\n');

fprintf('--- PART C END ---\n\n');

fprintf('===== 5.13 END =====\n');
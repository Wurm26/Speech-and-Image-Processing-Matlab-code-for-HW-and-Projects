clc; clear; close all;

syms a positive

c = 35000;
T = 1e-4;

alpha = simplify((8*T*c - 3*pi*a)/(8*T*c + 3*pi*a));
beta  = simplify(128*a/(3*pi*(8*T*c + 3*pi*a)));
zp    = simplify(-alpha);
zz    = sym(1);

fprintf('===== 5.14 START =====\n\n');

fprintf('c = 35000\n');
fprintf('T = 10^(-4)\n');
fprintf('R_r = 128/(9*pi^2)\n');
fprintf('L_r = 8*a/(3*pi*c)\n\n');

fprintf('--- PART A START ---\n\n');

fprintf('Z_L(s) = s*R_r*L_r/(R_r + s*L_r)\n');
fprintf('s = (2/T)*(1 - z^(-1))/(1 + z^(-1))\n\n');

fprintf('R(z) = [(2*R_r*L_r/T)(1-z^(-1))] / [R_r(1+z^(-1)) + (2*L_r/T)(1-z^(-1))]\n\n');

fprintf('R(z) = [(2048*a)/(27*pi^3*c*T)](1-z^(-1))\n');
fprintf('       / [(128/(9*pi^2) + 16*a/(3*pi*c*T)) + (128/(9*pi^2) - 16*a/(3*pi*c*T))z^(-1)]\n\n');

fprintf('c = 35000, T = 10^(-4)\n');
fprintf('8*T*c = 28\n\n');

fprintf('R(z) = [128*a/(3*pi*(28 + 3*pi*a))]*(1-z^(-1))\n');
fprintf('       / [1 + ((28 - 3*pi*a)/(28 + 3*pi*a))z^(-1)]\n\n');

fprintf('PART A ANSWER FOUND\n');
fprintf('After substituting the given constants, the z-transform is fully reduced except for the unfixed lip radius a.\n');

fprintf('--- PART A END ---\n\n');

fprintf('--- PART B START ---\n\n');

fprintf('P_L(z) = R(z)U_L(z)\n\n');

fprintf('[1 + ((28 - 3*pi*a)/(28 + 3*pi*a))z^(-1)]P_L(z)\n');
fprintf('= [128*a/(3*pi*(28 + 3*pi*a))](1-z^(-1))U_L(z)\n\n');

fprintf('p_L[n] + ((28 - 3*pi*a)/(28 + 3*pi*a))p_L[n-1]\n');
fprintf('= [128*a/(3*pi*(28 + 3*pi*a))]u_L[n]\n');
fprintf('  - [128*a/(3*pi*(28 + 3*pi*a))]u_L[n-1]\n\n');

fprintf('p_L[n] = -((28 - 3*pi*a)/(28 + 3*pi*a))p_L[n-1]\n');
fprintf('         + [128*a/(3*pi*(28 + 3*pi*a))]u_L[n]\n');
fprintf('         - [128*a/(3*pi*(28 + 3*pi*a))]u_L[n-1]\n\n');

fprintf('PART B ANSWER FOUND\n');
fprintf('This is the corresponding difference equation with the given numerical constants already substituted.\n');

fprintf('--- PART B END ---\n\n');

fprintf('--- PART C START ---\n\n');

fprintf('Zero:\n');
fprintf('1 - z^(-1) = 0\n');
fprintf('z = 1\n\n');

fprintf('Pole:\n');
fprintf('1 + ((28 - 3*pi*a)/(28 + 3*pi*a))z^(-1) = 0\n');
fprintf('z = -((28 - 3*pi*a)/(28 + 3*pi*a))\n');
fprintf('z = (3*pi*a - 28)/(3*pi*a + 28)\n\n');

fprintf('PART C ANSWER FOUND\n');
fprintf('The zero is fixed at z = 1, and the pole is z = (3*pi*a - 28)/(3*pi*a + 28).\n');

fprintf('--- PART C END ---\n\n');

fprintf('===== 5.14 END =====\n');
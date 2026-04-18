clc; clear; close all;

fprintf('===== 5.3 START =====\n\n')

fprintf('r_k = ((A_{k+1}/A_k) - 1)/((A_{k+1}/A_k) + 1)\n')
fprintf('x = A_{k+1}/A_k\n')
fprintf('x > 0\n\n')

fprintf('r_k = (x - 1)/(x + 1)\n\n')

fprintf('--- PART A START ---\n\n')

fprintf('(x - 1)/(x + 1) <= 1\n')
fprintf('x - 1 <= x + 1\n')
fprintf('-1 <= 1\n')
fprintf('r_k <= 1\n\n')

fprintf('(x - 1)/(x + 1) >= -1\n')
fprintf('x - 1 >= -(x + 1)\n')
fprintf('x - 1 >= -x - 1\n')
fprintf('2*x >= 0\n')
fprintf('r_k >= -1\n\n')

fprintf('-1 <= r_k <= 1\n\n')

fprintf('PART A ANSWER FOUND\n')
fprintf('For positive area values, the reflection coefficient cannot go below -1 or above 1.\n')
fprintf('Therefore, part (a) gives the bound -1 <= r_k <= 1.\n\n')

fprintf('--- PART A END ---\n\n')

fprintf('--- PART B START ---\n\n')

fprintf('0 < A_k < inf\n')
fprintf('0 < A_{k+1} < inf\n')
fprintf('0 < x < inf\n\n')

fprintf('(x - 1)/(x + 1) < 1\n')
fprintf('x - 1 < x + 1\n')
fprintf('-1 < 1\n')
fprintf('r_k < 1\n\n')

fprintf('(x - 1)/(x + 1) > -1\n')
fprintf('x - 1 > -(x + 1)\n')
fprintf('x - 1 > -x - 1\n')
fprintf('2*x > 0\n')
fprintf('r_k > -1\n\n')

fprintf('-1 < r_k < 1\n\n')

fprintf('PART B ANSWER FOUND\n')
fprintf('When both areas are strictly positive and finite, the reflection coefficient cannot reach either endpoint.\n')
fprintf('Therefore, part (b) gives the stricter result -1 < r_k < 1.\n\n')

fprintf('--- PART B END ---\n\n')

fprintf('===== 5.3 END =====\n')
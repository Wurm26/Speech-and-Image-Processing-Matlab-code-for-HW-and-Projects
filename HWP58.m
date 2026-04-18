clc; clear; close all;

fprintf('===== 5.8 START =====\n\n');

fprintf('--- PART A START ---\n\n');

fprintf('tau_1 = l_1/c\n');
fprintf('tau_2 = l_2/c\n');
fprintf('r_1 = (A_2 - A_1)/(A_2 + A_1)\n');
fprintf('r_G = 1\n');
fprintf('r_L = 1\n\n');

fprintf('V_a(s) = 0.5*(2)*(2)*(1 + r_1)*exp(-s*(tau_1 + tau_2))\n');
fprintf('       / (1 + r_1*(exp(-s*2*tau_1) + exp(-s*2*tau_2)) + exp(-s*2*(tau_1 + tau_2)))\n\n');

fprintf('Poles occur when the denominator is zero\n');
fprintf('1 + r_1*(exp(-s*2*tau_1) + exp(-s*2*tau_2)) + exp(-s*2*(tau_1 + tau_2)) = 0\n\n');

fprintf('s = 1j*Omega\n\n');

fprintf('1 + r_1*(exp(-1j*2*Omega*tau_1) + exp(-1j*2*Omega*tau_2)) + exp(-1j*2*Omega*(tau_1 + tau_2)) = 0\n');
fprintf('0 = exp(1j*Omega*(tau_1 + tau_2)) + r_1*(exp(1j*Omega*(tau_2 - tau_1)) + exp(1j*Omega*(tau_1 - tau_2))) + exp(-1j*Omega*(tau_1 + tau_2))\n');
fprintf('0 = 2*cos(Omega*(tau_1 + tau_2)) + 2*r_1*cos(Omega*(tau_2 - tau_1))\n');
fprintf('cos(Omega*(tau_1 + tau_2)) + r_1*cos(Omega*(tau_2 - tau_1)) = 0\n\n');

fprintf('cos(Omega*tau_1)*cos(Omega*tau_2) - sin(Omega*tau_1)*sin(Omega*tau_2)\n');
fprintf('+ r_1*(cos(Omega*tau_2)*cos(Omega*tau_1) + sin(Omega*tau_2)*sin(Omega*tau_1)) = 0\n\n');

fprintf('(1 + r_1)*cos(Omega*tau_1)*cos(Omega*tau_2) + (r_1 - 1)*sin(Omega*tau_1)*sin(Omega*tau_2) = 0\n');
fprintf('1 + r_1 = 2*A_2/(A_1 + A_2)\n');
fprintf('r_1 - 1 = -2*A_1/(A_1 + A_2)\n\n');

fprintf('A_2*cos(Omega*tau_1)*cos(Omega*tau_2) - A_1*sin(Omega*tau_1)*sin(Omega*tau_2) = 0\n');
fprintf('A_2*cot(Omega*tau_1) = A_1*tan(Omega*tau_2)\n');
fprintf('(A_1/A_2)*tan(Omega*tau_2) = cot(Omega*tau_1)\n\n');

fprintf('PART A ANSWER FOUND\n');
fprintf('The poles lie on the j*Omega axis and satisfy either the cosine equation or the equivalent tan/cot equation.\n');
fprintf('This satisfies both of the given equations for the possible poles.\n\n');

fprintf('--- PART A END ---\n\n');

fprintf('--- PART B START ---\n\n');

c = 35000;

cases = {
    '/i/' ,  9, 8,  6, 1;
    '/ae/',  4, 1, 13, 8;
    '/a/' ,  9, 1,  8, 7;
    '/^/' , 17, 6,  0, 6
};

for k = 1:size(cases,1)
    label = cases{k,1};
    l1 = cases{k,2};
    A1 = cases{k,3};
    l2 = cases{k,4};
    A2 = cases{k,5};

    tau1 = l1/c;
    tau2 = l2/c;
    r1 = (A2 - A1)/(A2 + A1);

    ffun = @(f) cos(2*pi*f*(tau1 + tau2)) + r1*cos(2*pi*f*(tau2 - tau1));

    fscan = linspace(1,4000,400000);
    yscan = ffun(fscan);

    idx = find(yscan(1:end-1).*yscan(2:end) <= 0);
    roots_f = [];

    for n = 1:length(idx)
        a = fscan(idx(n));
        b = fscan(idx(n)+1);
        fr = fzero(ffun,[a b]);

        if isempty(roots_f)
            roots_f = fr;
        else
            if min(abs(roots_f - fr)) > 1e-3
                roots_f(end+1) = fr;
            end
        end

        if length(roots_f) >= 3
            break;
        end
    end

    Omega_roots = 2*pi*roots_f;

    fprintf('%s\n', label);
    fprintf('l_1 = %.4f cm\n', l1);
    fprintf('A_1 = %.4f cm^2\n', A1);
    fprintf('l_2 = %.4f cm\n', l2);
    fprintf('A_2 = %.4f cm^2\n', A2);
    fprintf('tau_1 = %.8f sec\n', tau1);
    fprintf('tau_2 = %.8f sec\n', tau2);
    fprintf('r_1 = %.8f\n', r1);
    fprintf('cos(2*pi*f*(tau_1 + tau_2)) + r_1*cos(2*pi*f*(tau_2 - tau_1)) = 0\n');
    fprintf('Omega_1 = %.6f rad/sec    F_1 = %.6f Hz\n', Omega_roots(1), roots_f(1));
    fprintf('Omega_2 = %.6f rad/sec    F_2 = %.6f Hz\n', Omega_roots(2), roots_f(2));
    fprintf('Omega_3 = %.6f rad/sec    F_3 = %.6f Hz\n\n', Omega_roots(3), roots_f(3));
end

fprintf('PART B ANSWER FOUND\n');
fprintf('The first three positive roots for each vowel case are the first three formant frequencies of the lossless model.\n');
fprintf('These values come directly from the equation derived in part (a).\n\n');

fprintf('--- PART B END ---\n\n');

fprintf('===== 5.8 END =====\n');
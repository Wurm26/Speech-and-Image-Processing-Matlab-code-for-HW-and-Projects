clc; clear; close all;

a1 = 0.95;
a2 = 0.80;

n = 0:80;
w = linspace(0,pi,4000);

g1 = n.*(a1.^n);
g2 = n.*(a2.^n);

H1 = (a1*exp(-1j*w)) ./ (1 - a1*exp(-1j*w)).^2;
H2 = (a2*exp(-1j*w)) ./ (1 - a2*exp(-1j*w)).^2;

HL1 = (1 - exp(-1j*w)).*H1;
HL2 = (1 - exp(-1j*w)).*H2;

HdB1  = 20*log10(abs(H1)  + eps);
HdB2  = 20*log10(abs(H2)  + eps);
HLdB1 = 20*log10(abs(HL1) + eps);
HLdB2 = 20*log10(abs(HL2) + eps);

fprintf('===== 5.17 START =====\n\n');

fprintf('--- PART A START ---\n\n');

fprintf('G(z) = a z^(-1) / (1 - a z^(-1))^2\n');
fprintf('1/(1 - a z^(-1))^2 = sum_{n=0}^inf (n+1)a^n z^(-n)\n');
fprintf('G(z) = sum_{n=1}^inf n a^n z^(-n)\n');
fprintf('g[n] = n a^n u[n-1]\n\n');

fprintf('For a = 0.95:\n');
fprintf('g[n] = n*(0.95)^n*u[n-1]\n\n');

fprintf('For a = 0.80:\n');
fprintf('g[n] = n*(0.80)^n*u[n-1]\n\n');

figure;
stem(n,g1,'filled'); grid on;
xlabel('n');
ylabel('g[n]');
title('5.17(a): g[n] for a = 0.95');

figure;
stem(n,g2,'filled'); grid on;
xlabel('n');
ylabel('g[n]');
title('5.17(a): g[n] for a = 0.80');

fprintf('PART A ANSWER FOUND\n');
fprintf('The glottal pulse impulse response is g[n] = n a^n u[n-1].\n');
fprintf('The two stem plots show the pulse shape for a = 0.95 and a = 0.80.\n\n');

fprintf('--- PART A END ---\n\n');

fprintf('--- PART B START ---\n\n');

fprintf('G(e^(jw)) = a e^(-jw) / (1 - a e^(-jw))^2\n');
fprintf('|G(e^(jw))| = a / (1 + a^2 - 2a cos(w))\n');
fprintf('20log10|G(e^(jw))| = 20log10(a) - 20log10(1 + a^2 - 2a cos(w))\n\n');

figure;
plot(w,HdB1,'LineWidth',1.5); hold on;
plot(w,HdB2,'LineWidth',1.5);
grid on;
xlabel('\omega (rad/sample)');
ylabel('Magnitude (dB)');
title('5.17(b): 20log_{10}|G(e^{j\omega})|');
legend('a = 0.95','a = 0.80','Location','best');

fprintf('PART B ANSWER FOUND\n');
fprintf('This is the log-magnitude response of the second-order glottal pulse model.\n');
fprintf('The a = 0.95 case is more sharply peaked near DC than the a = 0.80 case.\n\n');

fprintf('--- PART B END ---\n\n');

fprintf('--- PART C START ---\n\n');

fprintf('Lip radiation adds a zero at z = 1\n');
fprintf('G_L(z) = (1 - z^(-1))G(z)\n');
fprintf('G_L(e^(jw)) = (1 - e^(-jw)) a e^(-jw) / (1 - a e^(-jw))^2\n\n');

figure;
plot(w,HLdB1,'LineWidth',1.5); hold on;
plot(w,HLdB2,'LineWidth',1.5);
grid on;
xlabel('\omega (rad/sample)');
ylabel('Magnitude (dB)');
title('5.17(c): 20log_{10}|(1-e^{-j\omega})G(e^{j\omega})|');
legend('a = 0.95','a = 0.80','Location','best');

fprintf('PART C ANSWER FOUND\n');
fprintf('Adding the lip-radiation zero forces the response toward zero at w = 0 and tilts the spectrum upward at low frequency.\n');
fprintf('The new plot is the part (b) response multiplied by the zero factor 1 - e^{-jw}.\n\n');

fprintf('--- PART C END ---\n\n');

fprintf('===== 5.17 END =====\n');
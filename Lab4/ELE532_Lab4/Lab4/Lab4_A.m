%Problem A.2

N = 100;
PWiN = 100;
PWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
z = conv(x, x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Xf = fft(x);
zf=Xf.*Xf;
subplot(211); plot(f,fftshift( abs(Xf))); grid on;
title('Magnitude-Spectra Plot');
xlabel('|Zf|'); ylabel('w');
subplot(212); plot(f,fftshift(angle(Xf))); grid on;
title('Phase-Spectra Plot');
xlabel('<z(w)'); ylabel('w');


%Problem A.3

N = 100;
PWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
z = conv(x, x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Xf = fft(x);
zf=Xf.*Xf;
subplot(2,1,1);
plot(f,fftshift(abs(zf))); grid on;
title('z(t) Magnitude Spectra');
xlabel('t');ylabel('Magnitude');
subplot(2,1,2); plot(f,fftshift(angle(zf)));
grid on; title('z(t) Phase Spectra');
xlabel('t'); ylabel('Phase');

%Problem A.4

N = 100; PWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
z = conv(x, x);

Xf = fft(x);
Zf = Xf.*Xf;
z2 = ifft(Zf);

subplot(2,1,1);
plot(z); grid on;
title('Time Domain z(t)');
xlabel('t'); ylabel('z(t)');

subplot(2,1,2);
plot(z2); grid on;
title('Time Domain z2(t)');
xlabel('t'); ylabel('z2(t)');

%Problem A.5

N = 100;
PWidth = 5;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);
Xf = fft(x);
subplot(2,1,1);
plot(f,fftshift(abs(Xf)));
grid on;
title('|X| Pulse Width = 5');
xlabel('w');ylabel('|X|');
subplot(2,1,2); plot(f,fftshift(angle(Xf)));
grid on; title('<X Pulse Width = 5');
xlabel('w'); ylabel('<X');

%Problem A.6 w+(t)

N = 100;
PWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);
wt = x.*exp(j*t*pi/3);
Xw = fft(wt);
subplot(2,1,1);
plot(f,fftshift(abs(Xw)));
grid on;
title('Magnitude plot of w+(t)');
xlabel('w');ylabel('|X|');
subplot(2,1,2); plot(f,fftshift(angle(Xw)));
grid on; title('Phase plot of w+(t)');
xlabel('w'); ylabel('<X');

%Problem A.6 w-(t)

N = 100;
PWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);
wt = x.*exp(-j*t*pi/3);
Xw = fft(wt);
subplot(2,1,1);
plot(f,fftshift(abs(Xw)));
grid on;
title('Magnitude plot of w-(t)');
xlabel('w');ylabel('|X|');
subplot(2,1,2); plot(f,fftshift(angle(Xw)));
grid on; title('Phase plot of w-(t)');
xlabel('w'); ylabel('<X');

%Problem A.6 wc(t)

N = 100;
PWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PWidth), zeros(1, N-PWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);
wt = x.*cos(t*pi/3);
Xw = fft(wt);
subplot(2,1,1);
plot(f,fftshift(abs(Xw)));
grid on;
title('Magnitude plot of wc(t)');
xlabel('w');ylabel('|X|');
subplot(2,1,2); plot(f,fftshift(angle(Xw)));
grid on; title('Phase plot of wc(t)');
xlabel('w'); ylabel('<X');
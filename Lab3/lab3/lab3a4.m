%Problem A.4a(x1(t))

clf; 
n = (-5:5);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi)) + (1./pi.*n).*sin((3+n).*pi) + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi));

idx = ~(n == 3 | n == -3 | n == 1 | n == -1);
D_n(idx) = 0;

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4a(x2(t))

clf; 
n = (-5:5);
D_n = (1./(n.*pi).*sin((n.*pi)./2));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4a(x3(t))

clf; 
n = (-5:5);
D_n = (1./(n.*pi).*sin((n.*pi)./4));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4b(x1(t))

clf; 
n = (-20:20);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi)) + (1./pi.*n).*sin((3+n).*pi) + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi));

idx = ~(n == 3 | n == -3 | n == 1 | n == -1);
D_n(idx) = 0;

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4b(x2(t))

clf; 
n = (-20:20);
D_n = (1./(n.*pi).*sin((n.*pi)./2));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4b(x3(t))

clf; 
n = (-20:20);
D_n = (1./(n.*pi).*sin((n.*pi)./4));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4c(x1(t))

clf; 
n = (-50:50);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi)) + (1./pi.*n).*sin((3+n).*pi) + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi));

idx = ~(n == 3 | n == -3 | n == 1 | n == -1);
D_n(idx) = 0;

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4c(x2(t))

clf; 
n = (-50:50);
D_n = (1./(n.*pi).*sin((n.*pi)./2));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4c(x3(t))

clf; 
n = (-50:50);
D_n = (1./(n.*pi).*sin((n.*pi)./4));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4d(x1(t))

clf; 
n = (-500:500);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi)) + (1./pi.*n).*sin((3+n).*pi) + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi));

idx = ~(n == 3 | n == -3 | n == 1 | n == -1);
D_n(idx) = 0;

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4d(x2(t))

clf; 
n = (-500:500);
D_n = (1./(n.*pi).*sin((n.*pi)./2));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');


%Problem A.4d(x3(t))

clf; 
n = (-500:500);
D_n = (1./(n.*pi).*sin((n.*pi)./4));

subplot(1,2,1); stem(n,abs(D_n),'.k');
xlabel('n'); ylabel('|D_n|');

subplot(1,2,2); stem(n,angle(D_n),'.k');
xlabel('n'); ylabel('\angle D_n [rad]');
%Problem A.5/6a(x1(t))

clf
t = -300:1:300;
x = 0;
for n = -5:5
    D_n = 0;
    if(n==3 || n==-3)
        D_n=(1/2);
    end
    if(n==1||n==-1)
        D_n=(1/4);
    end
    x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t));
end
plot(t,x);
xlabel('t'); 
ylabel('x1(t)');
title('x1(t) from D_n and n=-5:5')

%Problem A.5/6b(x1(t))

clf
t = -300:1:300;
x = 0;
for n = -20:20
    D_n = 0;
    if(n==3 || n==-3)
        D_n=(1/2);
    end
    if(n==1||n==-1)
        D_n=(1/4);
    end
    x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t));
end
plot(t,x);
xlabel('t'); 
ylabel('x1(t)');
title('x1(t) from D_n and n=-20:20')


%Problem A.5/6c(x1(t))

clf
t = -300:1:300;
x = 0;
for n = -50:50
    D_n = 0;
    if(n==3 || n==-3)
        D_n=(1/2);
    end
    if(n==1||n==-1)
        D_n=(1/4);
    end
    x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t));
end
plot(t,x);
xlabel('t'); 
ylabel('x1(t)');
title('x1(t) from D_n and n=-50:50')


%Problem A.5/6d(x1(t))

clf
t = -300:1:300;
x = 0;
for n = -500:500
    D_n = 0;
    if(n==3 || n==-3)
        D_n=(1/2);
    end
    if(n==1||n==-1)
        D_n=(1/4);
    end
    x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t));
end
plot(t,x);
xlabel('t'); 
ylabel('x1(t)');
title('x1(t) from D_n and n=-500:500')


%Problem A.5/6a(x2(t))

D_n=[-5:5]; nleftlim = -5; nrightlim = 5; x = 5+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.05;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/10; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x2(t) from D_n for -5:5');
legend('Signal x_2(t)'); grid;


%Problem A.5/6b(x2(t))

D_n=[-20:20]; nleftlim = -20; nrightlim = 20; x = 20+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.05;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/10; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x2(t) from D_n for -20:20');
legend('Signal x_2(t)'); grid;


%Problem A.5/6c(x2(t))

D_n=[-50:50]; nleftlim = -50; nrightlim = 50; x = 50+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.05;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/10; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x2(t) from D_n for -50:50');
legend('Signal x_2(t)'); grid;


%Problem A.5/6d(x2(t))

D_n=[-500:500]; nleftlim = -500; nrightlim = 500; x = 500+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.05;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/10; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x2(t) from D_n for -500:500');
legend('Signal x_2(t)'); grid;


%Problem A.5/6a(x3(t))

D_n=[-5:5]; nleftlim = -5; nrightlim = 5; x = 5+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.025;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/20; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x3(t) from D_n for -5:5');
legend('Signal x_3(t)'); grid;


%Problem A.5/6b(x3(t))

D_n=[-20:20]; nleftlim = -20; nrightlim = 20; x = 20+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.025;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/20; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x3(t) from D_n for -20:20');
legend('Signal x_3(t)'); grid;


%Problem A.5/6c(x3(t))

D_n=[-50:50]; nleftlim = -50; nrightlim = 50; x = 50+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.025;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/20; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x3(t) from D_n for -50:50');
legend('Signal x_3(t)'); grid;


%Problem A.5/6d(x3(t))

D_n=[-500:500]; nleftlim = -500; nrightlim = 500; x = 500+1;
for n = [nleftlim:nrightlim];
    if n == 0,
        D_n(x) = 0.025;
    else 
        D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
    end
end
n = [nleftlim:nrightlim]; W0 = pi/20; t = -300:300;
s = 300+1;
b=length(t);
x = zeros(1,b);
for t=-300:300
    for n=nleftlim:nrightlim
        x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
    end
end
t=-300:300; 
plot(t,real(x),'b'); 
ylabel('x(t)'); xlabel('t'); 
title('Regenerated x3(t) from D_n for -500:500');
legend('Signal x_3(t)'); grid;
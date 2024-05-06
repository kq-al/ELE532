%A.1
f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:2);
plot(t,f(t));
title('Figure 1.46');
xlabel('t');
ylabel('f(t)');

%--------------

f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:0.01:2);

plot(t,f(t));
title('Figure 1.47');
xlabel('t');
ylabel('f(t)');


%A.2
f = @(t) exp(-t);
t = (-2:2)

plot (t,f(t));
title('Figure for Problem A.2');
xlabel('t');
ylabel('f(t)');

%B.1
t = (-1:0.01:2); 
p = @(t) 1.0.*((t>=0)&(t<1));

plot(t,p(t));
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]); 
title('Figure 1.50');

%B.2
t=(-2:0.01:2);
u=@(t) 1.0.*(t>=0);
p=@(t) u(t)-u(t-1);
r=@(t) t.*p(t);
n=@(t) r(t)+r(-t+2);

plot(t,r(t));
xlabel('t');
ylabel('r(t)=t*p(t)');
title('Figure B.2 r(t)');
axis([-1 2 -0.1 1.1]);

%----------

t=(-2:0.01:2);
u=@(t) 1.0.*(t>=0);
p=@(t) u(t)-u(t-1);
r=@(t) t.*p(t);
n=@(t) r(t)+r(-t+2);

plot(t, n(t));
xlabel("t");
ylabel("n(t) =r(t) + r(-t+2)");
title('Figure B.2 n(t)');

%B.3
t = (-4:0.01:4);
n1=@(t) n(0.5*t);

plot(t,n1(t));
xlabel('t');
ylabel('n1(t)');
title('Figure B.3 n1(t)');
axis([-1 4 -0.1 1.1]);

%---------
t = (-4:0.01:4);
n1=@(t) n(0.5*t);
n2=@(t) n1(t+0.5);

plot(t,n2(t));
xlabel('t');
ylabel('n2(t)');
title('Figure B.3 n2(t)');
axis([-1 4 -0.1 1.1]);

%B.4
t = (-4:0.01:4);
n1=@(t) n(0.5*t);

plot(t,n1(t));
xlabel('t');
ylabel('n1(t)');
title('Figure B.3 n1(t)');
axis([-1 4 -0.1 1.1]);

%--------

t = (-4:0.01:4);
n1=@(t) n(0.5*t);
n2=@(t) n1(t+0.5);

plot(t,n2(t));
xlabel('t');
ylabel('n2(t)');
title('Figure B.3 n2(t)');
axis([-1 4 -0.1 1.1]);

%C.1
t=(-2:0.01:2);
f=@(t) exp(-2*t).*cos(4*pi*t);

u=@(t) 1.0.*(t>=0);
axis([-2 2 -0.1 1.1]);

g=@(t) f(t).*u(t);

plot(t,g(t));
xlabel('t');
ylabel('g(t)=f(t)*u(t)');
title('Figure for Problem C.1');

%C.2
f=@(t) exp(-2*t).*cos(4*pi*t);
t=(-2:0.01:2);

u=@(t) 1.0*(t>=0);
axis([-2 2 -0.1 1.1])

g=@(t) f(t).*u(t);
t=(-2:0.01:2);

s=@(t) g(t+1);
t=(0:0.01:4);

plot(t,s(t));
xlabel("t");
ylabel("s(t)=g(t+1)");
title('Figure for Problem C.2');

%C.3
u=@(t) 1.0.*(t>=0);
t=(1:0.01:4);

for alpha = 1:2:7
s=@(t) exp(-2).*exp(-alpha*t).*cos(4*pi*t).*u(t);

plot(t,s(t));
xlabel('t');
ylabel('s(t)');
title('Figure for Problem C.3');

hold on;
end

%D.2

%a.
tic;
for i = 1:1024
    for j = 1:100
        if B(i,j) < 0.01 
            B(i,j) = 0;
        end
    end
end

D2_a=B;
toc

%b.
tic;
B([ B >= 0.01 ]) = 0;
D2_b=B; 
toc;

%D.3
x_audio_copy = x_audio;

count=0;
threshold=0.01;

for i = 1:20000
        if x_audio_copy(i,1) < threshold
            x_audio_copy(i,1) = 0;
            count=count+1;
        end
end
disp(count);
sound(x_audio_copy);


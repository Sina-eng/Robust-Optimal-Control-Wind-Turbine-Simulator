%% Actuator state-space equation
Aa1 = [0 1;-wn0^2 -2*zeta0*wn0];
ba1 = [0;wn0^2];

%% LQR parameters
Q1 = [10 0;0 10];
Q2 = [20000000 0;0 10];
Q3 = [10000 0;0 10];
r1  = 150;
[Ks1,S1,P] = lqr(Aa1,ba1,Q1,r1)
[Ks2,S2,P] = lqr(Aa1,ba1,Q2,r1)
[Ks3,S3,P] = lqr(Aa1,ba1,Q3,r1)
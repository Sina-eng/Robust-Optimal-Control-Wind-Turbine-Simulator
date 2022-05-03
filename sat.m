function sat_x = sat(x,x_1,x_2)
%  sat_x = sat(x,x_1,x_2) returns the saturation of x by clipping at x_1<=0
%  and x_2>=0 according to
%    sat_x_i = x_2 if x_i>=x_2, x_i if x_1<=x_i<=x_2, x_1 otherwise
%
% Inputs:
%  - x   [n-vector] : The vector to be clipped (or 'satted')
%  - x_1 [scalar, <=0]: Lower clipping value
%  - x_2 [scalar, >=0]: Upper clipping value
%
% Output:
%  - sat_x [n-vector] : Clipped output

% Olugbenga Moses Anubi, 04/2020

% Getting variable sizes
n = size(x(:),1);

sat_x = x_2*ones(n,1).*double(x>=x_2) + x.*double((x_1<x)&(x<x_2)) + x_1*ones(n,1).*double(x<=x_1);
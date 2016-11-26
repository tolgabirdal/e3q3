syms x y z y2 z2 yz real;
C = sym('C', [3 10], 'real') ;
Ainv = sym('A', [3 3], 'real') ;

% A in eq. 3 (eq. 4)
% A = [   C(1,2), C(1,3), C(1,6);
%         C(2,2), C(2,3), C(2,6);
%         C(3,2), C(3,3), C(3,6);
%     ];


% P in eq. 3
P = -[  x.*C(1,4)+C(1,8) x.*C(1,5)+C(1,9) x.*x.*C(1,1)+C(1,7).*x+C(1,10) ;
        x.*C(2,4)+C(2,8) x.*C(2,5)+C(2,9) x.*x.*C(2,1)+C(2,7).*x+C(2,10) ;
        x.*C(3,4)+C(3,8) x.*C(3,5)+C(3,9) x.*x.*C(3,1)+C(3,7).*x+C(3,10)
    ];

Pprime = Ainv*P;

subs_3q3_eq9_11

Ms = subs(M, Pp, P);

% matlab's standard determinant goes out of memory
polynom = collect(determin(Ms), x);%collect(det(Ms),x);

% get coefficients w.r.t. x
q =coeffs(polynom, x, 'All');

% sols = solve(det(Ms)==0,x);
% size(sols) % there should be 8 solutions


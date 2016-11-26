
Pp = sym('Pp', [3 3], 'real') ;

quadTerms = Pprime*[y z 1]';
y2 = quadTerms(1);
z2 = quadTerms(2);
yz1 = quadTerms(3);

M3 = [   Pp(1, :)*[yz1 z2 z]' - Pp(3, :)*[y2 yz1 y]' ; 
        Pp(3, :)*[yz1 z2 z]' - Pp(2, :)*[y2 yz1 y]' ; 
        (Pp(3, :)*[y z 1]').^2  - (Pp(1, :)*[y z 1]').*(Pp(2, :)*[y z 1]')
    ];

M3 = subs(expand(M3),[y^2 z^2 yz y*z z*y],[y2 z2 yz1 yz1 yz1]);
% M3 = (collect(M3,[y,z]));
 
coeff1 =coeffs(M3(1)', [y, z]);
coeff2 =coeffs(M3(2)', [y, z]);
coeff3 =coeffs(M3(3)', [y, z]);
% 
M = [coeff1(end:-1:1) ; coeff2(end:-1:1) ; coeff3(end:-1:1)] ;

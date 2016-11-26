function [x, y, z] = solve_e3q3(C1, C2, C3)

Ax = [C1(2) C1(3) C1(6); C2(2) C2(3) C2(6); C3(2) C3(3) C3(6)];

rankAx = rank(Ax); % todo: check this - for the moment has to be invertible, but normally this is not a requirement

invA=inv(Ax)';
v=num2cell(invA(:));
[A1_1,A1_2,A1_3,A2_1,A2_2,A2_3,A3_1,A3_2,A3_3] = deal(v{:});
v=num2cell(C1);
[C1_1, C1_2, C1_3, C1_4, C1_5,C1_6,C1_7,C1_8,C1_9,C1_10] = deal(v{:});
v=num2cell(C2);
[C2_1, C2_2, C2_3, C2_4, C2_5,C2_6,C2_7,C2_8,C2_9,C2_10] = deal(v{:});
v=num2cell(C3);
[C3_1, C3_2, C3_3, C3_4, C3_5,C3_6,C3_7,C3_8,C3_9,C3_10] = deal(v{:});

q = gen_poly_e3q3(A1_1,A1_2,A1_3,A2_1,A2_2,A2_3,A3_1,A3_2,A3_3,C1_1,C1_4,C1_5,C1_7,C1_8,C1_9,C2_1,C2_4,C2_5,C2_7,C2_8,C2_9,C3_1,C3_4,C3_5,C3_7,C3_8,C3_9,C1_10,C2_10,C3_10);

x = roots(q);

y = zeros(size(x));
z = zeros(size(x));

for i=1:length(x)
    
end

end
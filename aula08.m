clear all;
clc;

v1 = [2 4];
v2 = [5 7];
s_v1 = length(v1);
s_v2 = length(v2);

pe = 0;

if s_v1 == s_v2
    for i = 1:s_v1
        pe = pe + (v1(i) * v2(i));
    end
    disp(pe)
else
    disp('Erro!')
end
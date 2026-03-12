clc;
m = [1 4 5; -3 2 7; 0 5 1];
me = [m, m(:, 1:2)];

st1 = 0;
for i = 1:3
    s = 1;
    aux = i;
    for j = 1:3
        s = s * me(j,aux);
        aux = aux + 1;
    end
    st1 = st1 + s;
end
disp(st1);

st2 = 0;
for i = 1:3
    s = 1;
    aux = i;
    for j = 3:-1:1
        s = s * me(j,aux);
        aux = aux + 1;
    end
    st2 = st2 + s;
end
disp(st2);

disp(st1 - st2);

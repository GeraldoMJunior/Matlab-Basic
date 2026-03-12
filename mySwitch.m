clc;
clearvars;

n = [4 2 9 3 8 5];

disp(myMedia(n));
disp(mean(n));
disp('----------');
disp(myMediana(n));
disp(median(n));
disp('----------');
disp(myStat(n, 'media'));
disp(myStat(n, 'mediana'));
disp(myStat(n, 'moda'));
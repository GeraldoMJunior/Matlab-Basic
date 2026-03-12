function r = myStat(v, nome)
  switch nome
    case 'media'
      r = sum(v)/length(v);
    case 'mediana'
      va = sort(v);
      t = length(v);

      if mod(t, 2) == 1
        r = va(ceil(t/2));
      else
        p = t/2;
        r = (va(p) + va(p+1))/2;
      end
    otherwise
      disp('Função não implementada.');
      r = 0;
  end
end
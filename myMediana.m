function m = myMediana(v)
  va = sort(v);
  t = length(v);

  if mod(t, 2) == 1
    m = va(ceil(t/2));
  else
    p = t/2;
    m = (va(p) + va(p+1))/2;
  end
end
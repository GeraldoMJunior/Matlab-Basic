function m = myModa(v)
  [q, n] = groupcounts(v');
  p = find(q == max(q));
  m = n(p);
end
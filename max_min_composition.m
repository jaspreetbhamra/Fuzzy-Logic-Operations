function C = max_min_composition(A, B)
  temp = 0;
  for i=1:rows(A)
    for j=1:columns(B)
      temp = 0;
      for k=1: columns(A)
        abc = min(A(i,k), B(k,j));
        something = temp;
        temp = max(something, abc);
      endfor
      C(i, j) = temp;
    endfor
  endfor
  disp("The max-min composition is: "), disp(C)
endfunction
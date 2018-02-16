function C = max_average_composition(A, B)
  temp = 0;
  for i=1:rows(A)
    for j=1:columns(B)
      temp = 0;
      for k=1: columns(A)
        abc = A(i,k) + B(k,j);
        something = temp;
        temp = max(something, abc);
      endfor
      C(i, j) = temp / 2;
    endfor
  endfor
  disp("The max-average composition is: "), disp(C)
endfunction
function C = cartesian_product(A, B)
  k = 0;
  for i=1:columns(A)
    for j=1:columns(B)
      if (A(i) > B(j))
        C(i, j) = B(j);
      else
        C(i, j) = A(i);
      endif
    endfor
  endfor
  disp("The cartesian product is: "), disp(C)
endfunction
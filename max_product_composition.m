function C = max_product_composition(A, B)
  temp = 0;
  for i=1:rows(A)
    for j=1:columns(B)
      temp = 0;
      for k=1: columns(A)
        abc = A(i,k) * B(k,j);
        something = temp;
        temp = max(something, abc);
      endfor
      C(i, j) = temp;
    endfor
  endfor
  disp("The max-product composition is: "), disp(C)
endfunction
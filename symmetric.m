function X = symmetric(A)
  flag = 0;
  for i=1:rows(A)
    for j=1:columns(A)
      if (A(i, j) != A(j, i))
        flag = 1;
        break;
      endif
    endfor
    if (flag == 1)
      disp("The given relation is not symmetric")
      X = 0;
      break;
    else
      disp("The given relation is symmetric")
      X = 1;
      break;
    endif
  endfor
endfunction
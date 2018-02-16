function X = transitivity(A)
  C = max_min_equivalence(A, A);
  flag = 1;
  for i=1:rows(C)
    for j=1:rows(C)
      if (A(i, j) < C(i, j))
        flag = 0;
        break;
      endif
    endfor
    if (flag == 0)
      % disp("The given relation is not transitive")
      % X = 0;
      break;
    %{
    else
      disp("The given relation is transitive")
      X = 1;  
      break;
    %}
    endif
  endfor
  if (flag == 0)
     disp("The given relation is not transitive")
     X = 0;
  else
     disp("The given relation is transitive")
     X = 1;
  endif
endfunction
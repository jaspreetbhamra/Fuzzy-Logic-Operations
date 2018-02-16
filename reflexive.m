function X = reflexive(A)
  flag = 0;
  for i=1:rows(A)
    if (A(i, i) != 1)
      % disp("The given relation is not reflexive")
      flag = 1;
      X = 0;
      break;
    % else  
      % disp("The given relation is reflexive")
      % X = 1;
      % break;
    endif
  endfor
  if (flag == 1)
    disp("The given relation is not reflexive")
  else
    X = 1;
    disp("The given relation is reflexive")
  endif
endfunction

function FuzzyOperations
  Z = [0.1, rand(1); 1.5, rand(1); 2, rand(1); 2.5, rand(1); 3, rand(1)];
  Y = [2, rand(1); 4, rand(1)];
  A = [0.1, 1; 1.5, 0.75; 2, 0.3; 2.5, 0.15; 3, 0];
  B = [0.1, 1; 1.5, 0.6; 2, 0.2; 2.5, 0.1; 3, 0];
  while (1)
    X = "one";
    #disp("Enter the value - one to eight, in words - corresponding to the operation that you want to perform\nEnter X to exit\n")
    X = input("Enter the value - one to eight, in words - corresponding to the operation that you want to perform\nEnter X to exit\n", "s")
    if (strcmp (X, "X") == 1 || strcmp (X, "x") == 1)
      break;
    endif  
    switch (X)
      case "1"
        union(A, B);
      case "2"
        intersection(A, B);
      case "3"
        complement(A);
      case "4"
        difference(A, B);
      case "5"
        algebraic_sum(A, B);
      case "6"
        algebraic_product(A, B);
      case "7"
        bounded_sum (A, B);
      case "8"
        bounded_difference (A, B);
     endswitch
   endwhile
  
  function X = union (C, D)
    for i = 1:rows(C)
      X(i, 1) = C(i, 1);
      if (C(i, 2) > D(i, 2))
        X(i, 2) = C(i, 2);
      else
        X(i, 2) = D(i, 2);
      endif
    endfor
    disp("The union of the given fuzzy sets is: "), disp(X)
  endfunction
  
  function X = intersection (C, D)
    for i = 1:rows(C)
      X(i, 1) = C(i, 1);
      if (C(i, 2) < D(i, 2))
        X(i, 2) = C(i, 2);
      else
        X(i, 2) = D(i, 2);
      endif
    endfor
    disp("The intersection of the given fuzzy sets is: "), disp(X)
  endfunction
  
  function X = complement (C)
    for i = 1:rows(C)
      X(i, 1) = C(i, 1);
      X(i, 2) = 1 - C(i, 2);
    endfor
    disp("The complement of the given fuzzy set is: "), disp(X)
  endfunction
  
  function X = difference (C, D)
    X = intersection(C, complement(D));
    disp("The difference of the given fuzzy sets is: "), disp(X)
  endfunction
  
  function X = algebraic_sum (C, D)
    for i = 1:rows(C)
      X(i, 1) = C(i, 1);
      X(i, 2) = C(i, 2) + D(i, 2);
    endfor
    disp("The algebraic sum for the given fuzzy sets is: "), disp(X)
  endfunction
  
  function X = algebraic_product (C, D)
    for i = 1:rows(C)
      X(i, 1) = C(i, 1);
      X(i, 2) = C(i, 2) * D(i, 2);
    endfor
    disp("The algebraic sum for the given fuzzy sets is: "), disp(X)
  endfunction
  
  function X = bounded_sum (C, D)
    for i = 1:rows(C)
      temp = C(i, 2) + D(i, 2);
      X(i,1) = C(i,1);
      if (temp > 1)
        X(i,2) = 1;
      else
        X(i,2) = temp;
      endif
    endfor
    disp("The bounded sum for the given fuzzy sets is: "), disp(X)
  endfunction
  
  function X = bounded_difference (C, D)
    for i = 1:rows(C)
      temp = C(i, 2) - D(i, 2);
      X(i,1) = C(i,1);
      if (temp < 0)
        X(i,2) = 0;
      else
        X(i,2) = temp;
      endif
    endfor
    disp("The bounded difference for the given fuzzy sets is: "), disp(X)
  endfunction
  
endfunction

FuzzyOperations()
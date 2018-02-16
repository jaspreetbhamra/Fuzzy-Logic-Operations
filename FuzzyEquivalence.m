%R = [0.3, 0.6, 0.9, 1, 0.6, 0.3; 0.3, 0.5, 0.5, 0.5, 0.5, 0.3; 0.3, 0.6, 0.8, 0.8, 0.6, 0.3;0.3, 0.6, 0.9, 1, 0.6, 0.3; 0.3, 0.6, 0.6, 0.6, 0.6, 0.3; 0.1, 0.1, 0.1, 0.1, 0.1, 0.1];
%R = [1, 0; 0, 1];
R = [1, 1, 1; 1, 1, 1; 1, 1, 1];

while (1)
    X = "one";
    #disp("Enter the value - one to eight, in words - corresponding to the operation that you want to perform\nEnter X to exit\n")
    X = input("Enter the value - 1 to 4 - corresponding to the operation that you want to perform\nEnter X to exit\n", "s")
    if (strcmp (X, "X") == 1 || strcmp (X, "x") == 1)
      break;
    endif  
    switch (X)
      case "1"
        reflexive(R);
      case "2"
        symmetric(R);
      case "3"
        transitivity(R);
     case "4"
        if (reflexive(R) == 1 && symmetric(R) == 1 && transitivity(R) == 1)
          disp("The given relation is equivalent")
        else
          disp("The given relation is not equivalent")
        endif
     endswitch
endwhile



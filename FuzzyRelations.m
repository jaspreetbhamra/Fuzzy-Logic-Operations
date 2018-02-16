L = [0.8, 1, 0.5, 0.1, 0, 0; 0.1, 0.2, 0.3, 0.2, 1, 0; 0.1, 0.6, 0.2, 0.7, 1, 0; 0.1, 0.4, 0.5, 0.8, 1, 0.9];
M = [0.1, 0.2, 0.5, 0.9, 0; 0.1, 0.2, 0.5, 0.9, 0; 0.1, 0.2, 0.5, 0.9, 0; 0.3, 0.4, 0.7, 0.6, 1; 0.3, 0.4, 0.7, 0.6, 1; 0.3, 0.4, 0.7, 0.6, 1];
R = [0.7, 0.6; 0.8, 0.3];
S = [0.8, 0.5, 0.4; 0.1, 0.6, 0.7];
I = [0.4, 0.7, 0.1];
J = [0.5, 0.8];


while (1)
    X = "one";
    #disp("Enter the value - one to eight, in words - corresponding to the operation that you want to perform\nEnter X to exit\n")
    X = input("Enter the value - 1 to 4 - corresponding to the operation that you want to perform\nEnter X to exit\n", "s")
    if (strcmp (X, "X") == 1 || strcmp (X, "x") == 1)
      break;
    endif  
    switch (X)
      case "1"
        cartesian_product(I, J);
      case "2"
        max_min_composition(R, S);
      case "3"
        max_product_composition(R, S);
      case "4"
        max_average_composition(R, S);
     endswitch
   endwhile
        


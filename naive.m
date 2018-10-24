% Power function is implemented.
% The Time Complexity of this is O(y).
% This does not compute negative powers. 
function pow = naive(x,y)
  pow=1;                     % power is first declared as 1 
  for i = y:-1:1             % The loop is run from y to 1 
    pow = pow * x;           % power is calculated by multiplying x , y times.
  end
  
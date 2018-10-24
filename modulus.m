function [ans] = modulus(a,b)
  x = a;
  while(x>=b)
    x=x-b;
  end
  ans = x;
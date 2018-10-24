function [gcd] = GCD(n1,n2)                                                            %declaration of function
a = n1;                                                                                %substituting a value
b = n2;                                                                                %substituting b value
if b==0                                                                                %termination condition
    gcd = a;                                                                           %return vaue
else
    fprintf('Calculating GCD of %i and %i\n',a,b);                                     %Printing steps
    fprintf('Here a = %i, b = %i, q = %i and r = %i\n',a,b,(a-modulus(a,b))/b,modulus(a,b));       %Calculating values
    gcd=GCD(b, modulus(a,b));                                                              %recursive call
end

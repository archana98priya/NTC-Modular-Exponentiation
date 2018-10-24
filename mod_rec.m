   % Problem : modular exponentiation function: Recursive approach 
   % Returns x ^ y mod n for x, y, and n > 1.
   % Time complexity of the function: O(log y)

function result = mod_rec(x,y,n)
                                          % anything raised to 0th power = 1 so return 1
    if (y == 0)
        result = 1;
        return;
    end
    if (x==0)
        result = 0;
        return;
    end    

                                          % recurse
    z = mod_rec(x, floor(y/2), n);

                                          % if even square the result
    if (mod(y, 2) == 0)
        result = mod(z*z, n);
        return;
    else
                                          % odd so square the result & multiply by itself
        result = mod(x*z*z, n);
        return;
    end
end
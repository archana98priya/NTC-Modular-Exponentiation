
   % Problem : modular exponentiation function: Iterative approach 
   % Returns x ^ y mod p for x, y, and p > 1.
   % Time complexity of the function: O(log y)



function result = iterative(x,y,p)

    res = 1;                   % Initialize result 
    x = mod(x,p);              % Update x if it is more than or equal to p   
        
    while y > 0
         temp = mod(y,2);
         if temp               % If y is odd, multiply x with result
            res = mod((res*x),p); 
         end   
      
         y = bitsra(y,1);      % y must be even now , so divide it by 2
         x = mod((x*x),p);
    end     
         
    result = res;
    
end

     
     

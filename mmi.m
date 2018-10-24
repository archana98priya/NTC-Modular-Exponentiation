   %   Application of modular exponentiation : Modular Multiplicative Mnverse
   
   %   Given two integers ‘a’ and ‘m’, find modular multiplicative inverse of ‘a’ under modulo ‘m’.
   %   The modular multiplicative inverse is an integer ‘x’ such that.
   %                  a x ≡ 1 (mod m)  
   %  The value of x should be in {0, 1, 2, … m-1}, i.e., in the ring of integer modulo m.
   %  The multiplicative inverse of “a modulo m” exists if and only if a and m are relatively prime (i.e., if gcd(a, m) = 1)
   %  If we know m is prime, then we can also use Fermats’s little theorem to find the inverse.
   %                a^(m-1) ≡ 1 (mod m)  
   %  If we multiply both sides with a^(-1), we get
   %                a^(-1) ≡ a^(m-2)  (mod m)
   %  Time Complexity in this case is O(log m). 

function res = mmi(a,m)
    g = gcd(a,m);
    
    if g ~= 1                                   % to check if a and m are relatively prime
        res = -1;
    
    else
        res= iterative(a,m-2,m);                % using modular exponentiation to calculate mmi
    end
end
    
        

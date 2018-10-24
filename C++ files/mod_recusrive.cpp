/*Recursive approach of modular exponentiation*/

#define ll long long 
#define c 1000000007

ll mod_recursive(ll a,ll b,ll c)
{
	if (a == 0) 
        return 0; 
    if (b == 0) 
        return 1; 

    long y; 
    if (b % 2 == 0)
    { 
        y = modular(a, b / 2, c); 
        y = (y * y) % c; 
    } 
    else
    { 
        y = a % c; 
        y = (y * modular(a, b - 1, c) % c) % c; 
    } 
  
    return (int)((y + c) % c);
}

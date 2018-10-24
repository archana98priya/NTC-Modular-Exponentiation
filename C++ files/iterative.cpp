/* Modular exponentiation : Iterative approach*/

/* calculate (a^b) % mod */



#define mod 1000000007
#define ll long long 


/*function*/

ll modular_exponentiation(ll a, ll b, ll mod){
	ll x = 1, y = a;
	while (b > 0){
		if (b%2){
			x = (x*y)%mod;
		}
		y = (y*y)%mod;
		b /= 2;
	}
	return x%mod;
}	
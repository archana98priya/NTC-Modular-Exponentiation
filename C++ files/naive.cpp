/* Function to calculate x raised to the power y */

int power(int x, int y) 
{
   int pow=1;
   for(i=y; i>0; i--)
   {
      pow=pow*x;
   }
   
   return pow;
} 
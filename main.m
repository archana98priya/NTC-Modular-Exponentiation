prompt = {'Enter base number(a): ','Enter power number(b):','Enter n:'};        % Prompt for the dialogue box
title = 'Input';                                                                % Title
input = inputdlg(prompt,title);                                                 % The input dialogue box command
x = str2num(input{1});                                                          % Converting cell(string) value to number : base
y = str2num(input{2});                                                          % Converting cell(string) value to number : exponent
n = str2num(input{3});                                                          % Converting cell(string) value to number : modulus
result = naive(x,y);                                                            % x power y is caluclated using naive approach
ni = mod(result,n)                                                              % The modulus is calculated to get the final result
rec = mod_rec(x,y,n)                                                            % Recursive approach
itr = iterative(x,y,n)                                                          % Iterative approach
mi = mmi(x,n)                                                                   % mmi
 
fprintf('The values of a power b mod n in naive is %i, iterative is %i and in recursive is %i\n The modulo multiplicative inverse of x with respect to n is %i\n',ni,itr,rec,mi);                   % This is to print on to the command window
out = msgbox(sprintf('The value of a power b mod n in\n Naive is: %i \n Iterative is: %i \n Recursive is: %i\nThe modulo multiplicative inverse of x with respect to n is %i\n',ni,itr,rec,mi));    % This is to print on to the msg box . The output is first converted into string and then put onto the msgbox.


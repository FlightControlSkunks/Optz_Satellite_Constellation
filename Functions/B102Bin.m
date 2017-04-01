function Binary = B102Bin(base10,bits)
% This function outputs the binary form of a base-10 number
if length(base10)>1
    error('Inputs to the B102Bin function must be a scalar base-10 number')
end

for i = 0:bits-1;
    k = bits - i;
    Binary(k) = rem(base10,2);
    base10 = floor(base10/2);
end
end
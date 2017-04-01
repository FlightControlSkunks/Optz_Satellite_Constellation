function Base10Value = Bin2B10(binary)
% This function outputs the base-10 form of a binary number

bits = length(binary);

if bits < 2
    error('Inputs to the Bin2B10 function must be a binary number')
end

[m,n] = size(binary);

if length(m) > length(n)    % if input is a column vector,
    binary = binary.';      % transpose column vector into row vector
end

for i = 0:bits-1
    j=bits-i;
    mult(j) = 2^i;
end

Base10Value = dot(binary,mult);

end
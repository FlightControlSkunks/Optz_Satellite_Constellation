function gray = Bin2Gray(binary)
% This function outputs the Gray code form of a binary number

bits = length(binary);

[m,n] = size(binary);

if length(m) > length(n)    % if input is a column vector,
    binary = binary.';      % transpose column vector into row vector
end

gray = ones(1,bits);
gray(1) = binary(1);

for i = 1:bits-1
    j = i + 1;
    if xor(binary(i),binary(j))
        gray(j) = 1;
    else
        gray(j) = 0;
    end
end
end
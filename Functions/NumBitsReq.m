function NumBits = NumBitsReq(range,resolution)
% This function outputs the minimum number of bits required to 
% discretize a continuous variable

if length(range) > 1
    error('Inputs to the NumBitsReq function must be a scalar number')
end

if length(resolution) > 1
    error('Inputs to the NumBitsReq function must be a scalar number')
end

NumBits = ceil(log(range/resolution + 1)/log(2));

end
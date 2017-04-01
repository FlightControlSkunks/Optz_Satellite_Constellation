function [childA, childB] = TwoPtCrossover(startafter,howmany,parentA,parentB)
% This function outputs the children chromosomes of two parents for a
% 2-point crossover in a genetic algorithm. The first input represents the
% bit prior to the start of the crossover, and the second input represents
% how many bits will be swapped between the parents. The third and fourth
% inputs are the parent chromosomes.

% Error messages:
if length(parentA) ~= length(parentB)
    error('Parents must have the same length')
end

if startafter > length(parentA)
    error('Choose a valid starting point')
end

if howmany > length(parentA)
    error('Choose a valid number of bits to swap')
end

if howmany < length(parentA) - startafter
    leftover = 0;
else
    leftover = howmany + startafter - length(parentA);
end

childA = parentA;
childB = parentB;

count = min(startafter + howmany, length(parentA));

while count > startafter
    childA(count) = parentB(count);
    childB(count) = parentA(count);
    count = count - 1;
end

if leftover > 0
    count = leftover;
    while count > 0
        childA(count) = parentB(count);
        childB(count) = parentA(count);
        count = count - 1;
    end
end

end

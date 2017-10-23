function output = alternate()

p0 = [ -1; 1; 1; 1; 1; -1; 1; -1; -1; -1; -1; 1; 1; -1; -1; -1; -1; 1; 1; -1; -1; -1; -1; 1; -1; 1; 1; 1; 1; -1]; 
p1 = [ -1; -1; -1; -1; -1; -1; 1; -1; -1; -1; -1; -1; 1; 1; 1; 1; 1; 1; -1; -1; -1; -1; -1; -1; -1; -1; -1; -1; -1; -1]; 
p2 = [ 1; -1; -1; -1; -1; -1; 1; -1; -1; 1; 1; 1; 1; -1; -1; 1; -1; 1; -1; 1; 1; -1; -1; 1; -1; -1; -1; -1; -1; 1]; 
p3 = [ 1; -1; -1; -1; -1; 1; 1; -1; -1; -1; -1; 1; 1; -1; 1; 1; -1; 1; 1; -1; 1; 1; -1; 1; -1; -1; -1; -1; -1; -1]; 
p4 = [ -1; -1; -1; -1; -1; -1; 1; 1; 1; -1; -1; -1; -1; -1; 1; -1; -1; -1; -1; -1; 1; -1; -1; -1; 1; 1; 1; 1; 1; 1 ]; 
p5 = [ 1; 1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; 1; 1; 1 ]; 
p6 = [ 1; 1; 1; 1; 1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; 1; 1; 1; -1; -1; -1; -1; -1; -1; ];

input = [ p0 p1 p2 p3 p4 p5 p6]; 
actual = 0; 
attempted = 0; 
correctOutputTwo = [ 20 30 40 50 60 70 ]; 
correctOutputFour = [ 20 30 40 50 60 70 ]; 
correctOutputSix = [20 30 40 50 60 70 ]; 
for numInputs = 2:7 
    corruptedValues = []; 
    currentVals = [];
    for z = 1:numInputs 
        currentVals(:,z) = input(:,z);
    end
    networkWeight = input(:) * transpose(input(:));
    maxLoops = 10 * numInputs; 
    numPixels = 0; 
    for k = 1:3 currentInput = 1; 
        numPixels = numPixels +2;
    for i = 1:maxLoops 
         corruptedValues = randomizeVector(input(:,currentInput), numPixels); 
        corruptNetworkResult = hardlim(mtimes(networkWeight,corruptedValues)); 
        if(isequal(corruptNetworkResult, hardlim(input(:,currentInput)))) 
             if (numPixels == 2) 
                correctOutputTwo(:,numInputs-1) = correctOutputTwo(:,numInputs-1) -1; 
             end
            if (numPixels == 4) 
                correctOutputFour(:,numInputs-1) = correctOutputFour(:,numInputs-1) -1; 
            end
            if (numPixels == 6) 
                correctOutputSix(:,numInputs-1) = correctOutputSix(:,numInputs-1) -1;
            end
        end
        if (mod(i,10) == 0) 
            currentInput = currentInput +1; 
        end
    end
    end
end
end

function randomizeVector(p,x)
    s = x;
    indicies = [];
    for i = 1:s
        k = randi([1 30]);
        indicies(i) = k;
    end 
    for j = 1:x
        p(indicies(j)) = -(p(indicies(j)));
    end
    y = p;
end

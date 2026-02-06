% Removing baseline of an EEG epoch
function newData = baselineRemover(Data,trialsNum,startIndex,endIndex,fs)
    coef = fs/1000;
    endIndex = int32(endIndex*coef);
    newData = Data;
    for i = 1:trialsNum
        baseline = Data(i,:,startIndex:endIndex);
        baselineMean = mean(baseline,3);
        newData(i,:,:) = Data(i,:,:) - baselineMean; 
    end
end
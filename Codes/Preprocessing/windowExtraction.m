% Window extraction
function windows = windowExtraction(trials,windSize,blobs,duration,num,fs)
    coef = fs/1000;
    windSize = int32(windSize*coef);
    
    % Defining windows from a window back of the first blob and going forward to the last blob.
    windNumber = 0;
    for i = 1:num
        start = 1;
        for j = 1:int32((blobs(i)*400*coef /windSize))
            windNumber = windNumber +1;
            forwardWindows(windNumber,:,:) = trials(i,:,start + windSize*(j-1):start + windSize*j -1);
            forwindowTrials(windNumber) = i;
            number_Window_Trial_forward(windNumber) = j;
        end
    end

    % Defining windows backward from response event for maximum of 4 windows
    windNumber = 0;
    for i = 1:num
        start = duration(i) + int32(400*coef);
        for j = 1:4
            if (start - windSize*(j) +1) >0
                windNumber = windNumber +1;
                backwardWindows(windNumber,:,:) = trials(i,:,start - windSize*(j) +1:start - windSize*(j-1));
                backwindowTrials(windNumber) = i;
                number_Window_Trial_backward(windNumber) = j;
            end
        end
    end

    windows = struct;
    windows.forwardWindows = forwardWindows;
    windows.forwindowTrials = forwindowTrials.';
    windows.backwardWindows = backwardWindows;
    windows.backwindowTrials = backwindowTrials.';
    windows.number_Window_Trial_forward = number_Window_Trial_forward.';
    windows.number_Window_Trial_backward = number_Window_Trial_backward.';

end
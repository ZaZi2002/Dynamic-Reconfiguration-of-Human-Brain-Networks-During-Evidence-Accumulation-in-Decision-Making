% Epoch extraction

function Trials = epochExtraction(EEG,Details,Sources,fs) 
    Trials = struct;
    Trials.Details = Details;
    coef = fs/1000;
    
    % Extracting trials indexes from events
    % Start index is start of the first blob - 400 ms
    % End index is response event + 400 ms 
    % Duration is sample amounts between first blob and response
    Trials.number = 0;
    Trials.startIndexes = zeros(120,1);
    Trials.endIndexes = zeros(120,1);
    Trials.durations = zeros(120,1);
    start_flag = 0;
    for i = 1:size(EEG.event,2)
        if ((EEG.event(i).type >= 11) && (EEG.event(i).type <= 16))
            if (EEG.event(i+1).type > 16)
                Trials.number = Trials.number + 1;
                Trials.startIndexes(Trials.number) = EEG.event(i+1).latency - int32(400*coef);
                start_flag = 1;
            end
        elseif ((EEG.event(i).type >= 23) && (EEG.event(i).type <= 27))
            if start_flag == 1
                Trials.endIndexes(Trials.number) = EEG.event(i).latency + int32(400*coef);
                Trials.durations(Trials.number) = Trials.endIndexes(Trials.number)-Trials.startIndexes(Trials.number) - int32(800*coef) +1;
                start_flag = 0;
            end
        elseif ((EEG.event(i).type >= 32) && (EEG.event(i).type <= 36) && start_flag)
            Trials.endIndexes(Trials.number) = EEG.event(i).latency;
            Trials.durations(Trials.number) = Trials.endIndexes(Trials.number)-Trials.startIndexes(Trials.number) - int32(800*coef) +1;
            start_flag = 0;
        end
    end
    
    Trials.epochs = zeros(Trials.number,size(Sources,1),max(Trials.durations));
    for i = 1:Trials.number
        Trials.epochs(i,:,1:Trials.durations(i)+ int32(800*coef)) = Sources(:,Trials.startIndexes(i):Trials.endIndexes(i));
    end
    
    % Defining labels
    Trials.butterfly = Details.labels(:,1);
    Trials.difficulty = Details.labels(:,2);
    Trials.butterflyImage = Details.labels(:,4);
    Trials.isFixedDuration = Details.labels(:,5);
    
    % Other usefull details
    Trials.blobs = Details.frameNum.';
    Trials.accuracies = Details.Accuracy.';
    Trials.butterflyResponses = Details.Finaal_Response.';
    Trials.confidences = Details.Final_Confidence.';
    Trials.blobDuration = Details.Frame_Duration;
    
    % Defining response time after last blob
    Trials.responseDeltas = zeros(120,1);
    for i = 1:Trials.number
        Trials.responseDeltas(i) = Trials.durations(i) - Trials.blobDuration*fs*(Trials.blobs(i) - 1);
    end

    Trials.Rejecteds = [];

end
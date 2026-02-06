% Filtering

function trials_filtered = bandFilter(trials,freq_low,freq_high,filtOrder,fs)

    [b,a] = butter(filtOrder, [freq_low freq_high] / (fs/2),'bandpass');

    % Fitering each trial an each channel
    trials_filtered = zeros(size(trials,1),size(trials,2),size(trials,3));
    for i = 1:size(trials,1)
        for j = 1:size(trials,2)
            trials_filtered(i,j,:) = filter(b,a,trials(i,j,:));
        end
    end
    
end
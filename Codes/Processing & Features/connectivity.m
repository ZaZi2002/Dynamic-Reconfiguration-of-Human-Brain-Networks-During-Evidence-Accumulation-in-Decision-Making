% Connectivity calculation
% First method is for PLI
% Second method is for wPLI
% Third method is fo PLV

function connection = connectivity(method,x,y)
    % x is for window 1 
    % y is for window 2
    if (method == 1)
        x_analytic = hilbert(x);
        y_analytic = hilbert(y);
        
        x_phase = angle(x_analytic);
        y_phase = angle(y_analytic);
        
        phase_diff = angle(exp(1i*(x_phase - y_phase)));
        
        N = length(phase_diff);
        PLI = abs(sum(sign(phase_diff)) / N);
    
        connection = PLI;
    
    elseif (method == 2)
        x_analytic = hilbert(x);
        y_analytic = hilbert(y);
        
        x_phase = angle(x_analytic);
        y_phase = angle(y_analytic);
        
        phase_diff = angle(exp(1i*(x_phase - y_phase)));
        
        numerator = sum(sign(abs(phase_diff)).*abs(phase_diff));
        denominator = sum(abs(phase_diff));
        WPLI = abs(numerator / denominator);
    
        connection = WPLI;

    elseif (method == 3)
        x_analytic = hilbert(x);
        y_analytic = hilbert(y);
        
        x_phase = angle(x_analytic);
        y_phase = angle(y_analytic);
        
        phase_diff = x_phase - y_phase;
        
        PLV = abs(mean(exp(1i*phase_diff)));
    
        connection = PLV;
        
    else
        disp('Method input is not correct!');
    end

end
function [F, D] = FiniteDifference(x, f)
    n = length(x);
    D = zeros(n, n+1);
    D(:,1) = x(:);
    D(:,2) = f(:);
    
    for j = 3:n+1
        for i = 1:n-j+2
            D(i,j) = (D(i+1,j-1) - D(i,j-1)) / (x(i+j-2) - x(i));
        end
    end
    
    F = D(1,2:n+1);
end

function [P] = EvalFiniteDiff(xt, x, F)
    m = length(xt);
    n = length(F);
    P = zeros(1, m);
    
    for k = 1:m
        P(k) = F(1);
        term = 1;
        for i = 2:n
            term = term * (xt(k) - x(i-1));
            P(k) = P(k) + F(i) * term;
        end
    end
end

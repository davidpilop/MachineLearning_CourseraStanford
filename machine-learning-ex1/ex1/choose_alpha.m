function [alpha] = choose_alpha (X, y, theta, alpha)

[~, J_history] = gradientDescentMulti(X, y, theta, alpha, 2);

if ((J_history(2)-J_history(1))>0)
    while ((J_history(2)-J_history(1))>0)
        alpha=alpha/10;
        [~, J_history] = gradientDescentMulti(X, y, theta, alpha, 2);
    end
else
    while ((J_history(2)-J_history(1))<0)
        alpha=alpha*10;
        [~, J_history] = gradientDescentMulti(X, y, theta, alpha, 2);
    end
    alpha=alpha/10;
end
end
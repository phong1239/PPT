function result = NoiSuyHamLagrangeEquation(xa, ya)
    syms X; 

    n = length(xa);
    sum = 0;

    for i = 1:n 
        product = ya(i);

        for j = 1:n
            if i ~= j 
                product = product * (X - xa(j)) / (xa(i) - xa(j));
            end
        end

        sum = sum + product;
    end

    result = simplify(sum); 
end

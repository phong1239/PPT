function result = NoiSuyHamNewtonInterpolation(xa, ya, x)
    da = NoiSuyHamDividedDifference(xa, ya);
    result = NoiSuyHamNewtonForm(xa, da, x);
end
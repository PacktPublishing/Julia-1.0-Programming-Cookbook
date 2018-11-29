function quadratic1(a, b, c)
    t(s) = (-b + s*sqrt(Δ))/(2a)
    a == 0 && error("a must be different than zero")
    Δ = Complex(b^2-4*a*c)
    t(1), t(-1)
end

function quadratic2(a, b, c)
    Δ = Complex(b^2-4*a*c)
    t(s) = (-b + s*sqrt(Δ))/(2a)
    a == 0 && error("a must be different than zero")
    t(1), t(-1)
end

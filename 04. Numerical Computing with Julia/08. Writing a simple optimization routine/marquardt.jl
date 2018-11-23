using ForwardDiff
using LinearAlgebra

function marquardt(f, x₀; ε=1e-6, maxiter=1000, λ=10.0^4, α=2)
    x = x₀
    fx = f(x)
    for i in 1:maxiter
        g = ForwardDiff.gradient(f, x)
        norm(g) ≤ ε && return (x=x, converged=true, iters=i)
        x′ = x .- (ForwardDiff.hessian(f, x) + λ*I) \ g
        fx′ = f(x′)
        if fx′ < fx
            λ *= 0.5
            fx = fx′
            x = x′
        else
            λ *= 2.0
        end
    end
    (x=x, converged=false, iters=maxiter)
end

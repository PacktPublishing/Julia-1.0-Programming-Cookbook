using Optim
using Distributions

function loglik(x, μ, logσ)
    nd = Normal(μ, exp(logσ))
    -sum(logpdf(nd, v) for v in x)
end

function testoptim(x)
    res = optimize(par -> loglik(x, par[1], par[2]), zeros(2))
    display(res)
    res.minimizer[1], exp(res.minimizer[2])
end

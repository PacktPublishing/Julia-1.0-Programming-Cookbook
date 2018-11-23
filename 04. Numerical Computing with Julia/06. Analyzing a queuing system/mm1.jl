using Distributions, OnlineStats

function queue1(until::Real, burnin::Real,
                ad::Distribution, sd::Distribution)
    now, nextArrival, nextDeparture = 0.0, rand(ad), Inf
    queue, waits = Float64[], Mean()
    while now < until
        if nextArrival < nextDeparture
            now = nextArrival
            if isempty(queue)
                nextDeparture = nextArrival + rand(sd)
            end
            push!(queue, nextArrival)
            nextArrival += rand(ad)
        else
            now = nextDeparture
            insystem = nextDeparture - popfirst!(queue)
            burnin < now < until && fit!(waits, insystem)
            nextDeparture += isempty(queue) ? Inf : rand(sd)
        end
    end
    value(waits)
end

mm1_exact(ad::Exponential, sd::Exponential) = 1/(1/mean(sd)-1/mean(ad))

function bootCI(data, stat::Function, CI::Float64, reps::Integer)
    boot = [stat(rand(data, length(data))) for i in 1:reps]
    low, high = quantile(boot, [(1-CI)/2, (1+CI)/2])
    (value=stat(data), low=low, high=high)
end

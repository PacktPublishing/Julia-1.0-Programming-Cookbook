using OnlineStats, Random

function simwalk()
    jumps = 0
    distance = 0.0
    while true
       jumps += 1
       distance += rand()
       distance ≥ 1.0 && return jumps
    end
end

function incremental(n)
    s = Mean()
    for i in 1:n
        fit!(s, simwalk())
    end
    value(s)
end


struct T1
    x::NTuple{1000, Int}
    y::Int
end

mutable struct T2
    x::NTuple{1000, Int}
    y::Int
end

function worker1()
    p = T1(ntuple(x->1, 1000), 0)
    for i in 1:10^6
        p = T1(p.x, p.y+1)
    end
    p
end

function worker2()
    p = T2(ntuple(x->1, 1000), 0)
    for i in 1:10^6
        p.y += 1
    end
    p
end

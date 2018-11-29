using Statistics
function timeto1(mv)
    x = Int[]
    while true
        push!(x, rand(1:mv))
        1 in x && return length(x)
    end
end
agg(f, mv, rep) = mean(f(mv) for i in 1:rep)
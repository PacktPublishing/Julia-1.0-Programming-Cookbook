function randargmin2(a)
    indices = eachindex(a)
    y = iterate(indices)
    y === nothing && throw(ArgumentError("collection must be non-empty"))
    (idx, state) = y
    minval = a[idx]
    bestidx = idx
    bestcount = 1
    y = iterate(indices, state)
    while y !== nothing
        (idx, state) = y
        curval = a[idx]
        if isless(curval, minval)
            minval = curval
            bestidx = idx
            bestcount = 1
        elseif isequal(curval, minval)
            bestcount += 1
            rand() * bestcount < 1 && (bestidx = idx)
        end
        y = iterate(indices, state)
    end
    bestidx
end

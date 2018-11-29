function expandgrid(levels...)
    lengths = length.(levels)
    inner = 1
    outer = prod(lengths)
    grid = []
    for i in 1:length(levels)
        outer = div(outer, lengths[i])
        push!(grid, repeat(levels[i], inner=inner, outer=outer))
        inner *= lengths[i]
    end
    Tuple(grid)
end

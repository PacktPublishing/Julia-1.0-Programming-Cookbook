# take a sequence of matrices and multiply them in an optimal order
function fastmatmul(args::AbstractMatrix...)
    length(args) ≤ 1 && return *(args...)
    sizes = size.(args)
    if !all(sizes[i][2] == sizes[i+1][1] for i in 1:length(sizes)-1)
         throw(ArgumentError("matrix dimensions mismatch"))
    end
    partcost = Dict{Tuple{Int,Int}, Tuple{Int, Int}}()
    from, to = 1, length(sizes)
    solvemul(sizes, partcost, from, to)
    domul(args, partcost, from, to)
end

# find the optimal sequence of multiplications
function solvemul(sizes, partcost, from, to)
    if from == to
        partcost[(from, to)] = (0, from)
        return
    end
    mincost = typemax(Int)
    minj = -1
    for j in from:to-1
        haskey(partcost, (from, j)) || solvemul(sizes, partcost, from, j)
        haskey(partcost, (j+1, to)) || solvemul(sizes, partcost, j+1, to)
        curcost = sizes[from][1]*sizes[j][2]*sizes[to][2] +
                  partcost[(from, j)][1] + partcost[(j+1, to)][1]
        if curcost < mincost
            minj = j
            mincost = curcost
        end
    end
    partcost[(from, to)] = (mincost, minj)
end

# perform the multiplication given precomputed information
# about the optimal multiplication order
function domul(args, partcost, from, to)
    from == to && return args[from]
    from+1 == to && return args[from]*args[to]
    j = partcost[(from, to)][2]
    domul(args, partcost, from, j) * domul(args, partcost, j+1, to)
end

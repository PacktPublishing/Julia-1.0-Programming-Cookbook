blockvalid(x, v) = count(isequal(v), x) ≤ 1

function backtrack!(x)
    pos = findfirst(isequal(0), x)
    isa(pos, Nothing) && return true
    iloc = 3div(pos[1]-1, 3) .+ (1:3)
    jloc = 3div(pos[2]-1, 3) .+ (1:3)
    for k in 1:9
        x[pos] = k
        blockvalid(view(x, pos[1], :), k) || continue
        blockvalid(view(x, :, pos[2]), k) || continue
        blockvalid(view(x, iloc, jloc), k) || continue
        backtrack!(x) && return true
    end
    x[pos] = 0
    return false
end

function ssolve(lines, i)
    t = [lines[10i-j][k] - '0' for j in 8:-1:0, k in 1:9]
    backtrack!(t)
    sum([100, 10, 1] .* t[1, 1:3])
end

lines = readlines("p096_sudoku.txt")
@time sum(ssolve(lines, i) for i in 1:50)
@time sum(ssolve(lines, i) for i in 1:50)

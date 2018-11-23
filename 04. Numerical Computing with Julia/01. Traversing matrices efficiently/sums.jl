function sum_by_col(x)
    s = zero(eltype(x))
    for j in 1:size(x, 2)
        for i in 1:size(x, 1)
            s += x[i, j]
        end
    end
    s
end

function sum_by_row(x)
    s = zero(eltype(x))
    for i in 1:size(x, 1)
        for j in 1:size(x, 2)
            s += x[i, j]
        end
    end
    s
end

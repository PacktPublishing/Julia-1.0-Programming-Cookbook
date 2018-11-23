using Statistics

abstract type CorMethod end
struct CorAll <: CorMethod end
struct CorComplete <: CorMethod end
struct CorPairwise <: CorMethod end

function Statistics.cor(df::DataFrame; method::CorMethod=CorAll())
    cor1(i, j) = nrow(df2) == 0 ? missing : cor(df2[i], df2[j])

    function cor2(i, j)
       x = dropmissing(DataFrame([df2[i], df2[j]]))
       nrow(x) == 0 ? missing : cor(x[1], x[2])
    end

    use_cor = method == CorPairwise() ? cor2 : cor1
    df2 = method == CorComplete() ? dropmissing(df) : df

    m = Matrix{Union{Float64, Missing}}(undef, ncol(df), ncol(df))
    for i in 1:ncol(df), j in i:ncol(df)
        m[i, j] = use_cor(i, j)
        m[j, i] = m[i, j]
    end
    m
end

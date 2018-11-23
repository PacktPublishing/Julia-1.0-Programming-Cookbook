using DataFrames

function df2mm(df::DataFrame)
    n = size(df, 1)
    mm_raw = [fill(1.0, n, 1)]
    mm_name = ["const"]
    for (name, value) in eachcol(df)
        if eltype(value) <: Real
            push!(mm_raw, hcat(Float64.(value)))
            push!(mm_name, string(name))
        else
            uvalue = unique(value)
            length(uvalue) == 1 && continue
            dvalue = Dict(v=>i for (i, v) in enumerate(uvalue))
            mvalue = zeros(n, length(uvalue))
            for i in 1:n
                mvalue[i, dvalue[value[i]]] = 1.0
            end
            push!(mm_raw, mvalue[:, 2:end])
            append!(mm_name, string.(name, "_", uvalue[2:end]))
        end
    end
    (data=hcat(mm_raw...), names=mm_name)
end

function lm(df, y, xs)
    yv = Float64.(df[y])
    xv, xn = df2mm(df[[xs;]])
    params = (transpose(xv)*xv)\(transpose(xv)*yv)
    DataFrame(name = xn, estimate=params)
end

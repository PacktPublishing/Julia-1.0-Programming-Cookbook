using BenchmarkTools

mode = ["normal", "@inbounds"]
i = 0
for inbounds in ["", "@inbounds"]
    global i += 1
    eval(Meta.parse("""function f$i(x::AbstractArray{<:Real})
                           y = 0
                           $inbounds for i in eachindex(x)
                               y += x[i] > 0.5
                           end
                           y
                       end"""))
end

x = rand(10^7)
for (idx, f) in enumerate([f1, f2])
    println("\n", mode[idx])
    @btime $f($x)
end

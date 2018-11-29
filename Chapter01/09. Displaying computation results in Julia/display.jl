using PyPlot, Random

function f()
    Random.seed!(1)
    r = rand(50)
    @show sum(r)
    display(transpose(r))
    print(transpose(r))
    plot(r)
end

f()

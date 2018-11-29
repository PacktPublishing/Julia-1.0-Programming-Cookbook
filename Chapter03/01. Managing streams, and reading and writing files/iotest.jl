a = parse(Float64, readline(stdin))
b = parse(Float64, readline(stdin))
println(stdout, "Got values: $a, $b")
if b > a 
    println(stderr, "Wrong values: ", b, ">", a)
    exit(1)
end
println(stdout, "log(", a, "-", b, ")=", log(a-b))
exit(0)

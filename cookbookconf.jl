using Pkg

function addandpin(spec)
    Pkg.add(PackageSpec(; spec...))
    Pkg.pin(spec.name)
end

# packages without external dependencies
# that have to be manually instlled

pkg1 = [(name="StatsBase", version="0.26.0"),
        (name="TimeZones", version="0.8.1"),
        (name="BSON", version="0.2.1"),
        (name="Revise", version="0.7.12"),
        (name="Distributions", version="0.16.4"),
        (name="Clp", version="0.5.0"),
        (name="HTTP", version="0.7.1"),
        (name="Gumbo", version="0.5.1"),
        (name="StringEncodings", version="0.3.1"),
        (name="ZMQ", version="1.0.0"),
        (name="CodecZlib", version="0.5.0"),
        (name="JSON", version="0.19.0"),
        (name="BenchmarkTools", version="0.4.1"),
        (name="JuliaWebAPI", version="0.5.0"),
        (name="FileIO", version="1.0.2"),
        (name="ProfileView", version="0.4.0"),
        (name="StaticArrays", version="0.8.3"),
        (name="ForwardDiff", version="0.9.0"),
        (name="Optim", version="0.17.1"),
        (name="JuMP", version="0.18.4"),
        (name="JLD2", version="0.1.2"),
        (name="XLSX", version="0.4.2"),
        (name="Cbc", version="0.4.2"),
        (name="DataFrames", version="0.14.1"),
        (name="CSV", version="0.4.3"),
        (name="DataFramesMeta", version="0.4.0"),
        (name="Feather", version="0.5.0"),
        (name="FreqTables", version="0.3.0"),
        (name="OnlineStats", version="0.19.1"),
        (name="MySQL", version="0.7.0"),
        (name="Cascadia", version="0.4.0"),
        (name="UnicodePlots", version="0.3.1")]

foreach(addandpin, pkg1)

# packages that depend on Python Anaconda
# whose manual installation is optional

pkg2 = [(name="Conda", version="1.0.2"),
        (name="PyCall", version="1.18.4"),
        (name="PyPlot", version="2.6.3"),
        (name="Plots", version="0.20.5"),
        (name="StatPlots", version="0.8.1")]

foreach(addandpin, pkg2)

# packages that have external dependencies
# that have to be manually installed

pkg3 = [(name="RCall", version="0.12.1"),
        (name="JDBC", version="0.4.0"),
        (name="LibPQ", version="0.5.0"),
        (name="Gurobi", version="0.5.3")]

foreach(addandpin, pkg3)

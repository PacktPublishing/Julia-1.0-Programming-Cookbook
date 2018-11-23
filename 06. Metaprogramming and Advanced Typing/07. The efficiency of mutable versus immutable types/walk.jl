abstract type AbstractPoint end

struct PointI <: AbstractPoint
    x::Int
    y::Int
end

mutable struct PointM <: AbstractPoint
    x::Int
    y::Int
end

PointM(p::PointM) = PointM(p.x, p.y)

d(p::AbstractPoint) = abs(p.x) + abs(p.y)
move(p::PointI, d::PointI) = PointI(p.x+d.x, p.y+d.y)
move(p::PointM, d::PointM) = (p.x += d.x; p.y += d.y; p)

function simI()
    maxd = 0
    x = PointI(0, 0)
    @inbounds for i in 1:10^6
        x = move(x, PointI(2rand(Bool)-1, 2rand(Bool)-1))
        curd = d(x)
        maxd = max(maxd, curd)
    end
    maxd
end

function simM()
    maxd = 0
    x = PointM(0, 0)
    m = PointM(0, 0)
    @inbounds for i in 1:10^6
        m.x, m.y = 2rand(Bool)-1, 2rand(Bool)-1
        move(x, m)
        curd = d(x)
        maxd = max(maxd, curd)
    end
    maxd
end

function simI2()
    path = PointI[]
    x = PointI(0, 0)
    @inbounds for i in 1:10^6
        push!(path, x)
        x = move(x, PointI(2rand(Bool)-1, 2rand(Bool)-1))
    end
    path
end

function simM2()
    path = PointM[]
    x = PointM(0, 0)
    m = PointM(0, 0)
    @inbounds for i in 1:10^6
        push!(path, PointM(x))
        m.x, m.y = 2rand(Bool)-1, 2rand(Bool)-1
        move(x, m)
    end
    path
end

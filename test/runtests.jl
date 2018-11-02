using Test
using Random
using GSL
using SpecialFunctions

Random.seed!(1)

@testset "GSL" begin
    include("hypergeom.jl")
    include("legendre.jl")
    include("multidim_rootfinding.jl")    
    include("numdiff.jl")
    include("quadrature.jl")
    include("rng.jl")    
    include("rootfinding.jl")
    include("specfunc.jl")
end


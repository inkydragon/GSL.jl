using BinDeps
@BinDeps.load_dependencies

module GSL
    include("__FILELIST.jl")
    include("ConvertGSL.jl")
    include("Constants.jl")
    include("6_3_QuadraticEquations.jl")
    include("6_4_CubicEquations.jl")
    include("6_5_GeneralPolynomialEquations.jl")
    include("7_5_Bessel_Functions.jl")
    include("7_20_Gegenbauer_Functions.jl")
    include("7_21_HypergeometricFunctions.jl")
    include("9_2_Permutation_allocation.jl")
    include("9_3_Accessing_permutation_elements.jl")
    include("9_4_Permutation_properties.jl")
    include("9_5_Permutation_functions.jl")
    include("9_8_Permutations_in_cyclic_form.jl")
    include("20_23_SphericalVectorDistributions.jl")
    include("28_1_NumericalDifferentiationfunctions.jl")
end #module

#Test
using GSL
try
    #Turn off GSL's default error handler so that Julia doesn't segfault on error
    set_error_handler_off() 
    set_error_handler(custom_gsl_error_handler)
    sf_hyperg_U(-1.0, -1.0, randn())
catch
    error("The GNU Scientific Library does not appear to be installed.")
end

#If no problems were found during the initialization, say it's ok


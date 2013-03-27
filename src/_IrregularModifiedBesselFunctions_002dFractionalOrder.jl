#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################################
# 7.5.12 Irregular Modified Bessel Functions—Fractional Order #
###############################################################
export gsl_sf_bessel_Knu, gsl_sf_bessel_Knu_e, gsl_sf_bessel_lnKnu,
       gsl_sf_bessel_lnKnu_e, gsl_sf_bessel_Knu_scaled,
       gsl_sf_bessel_Knu_scaled_e


# These routines compute the irregular modified Bessel function of fractional
# order \nu, K_\nu(x) for x>0, \nu>0.
# 
#   Domain: x > 0, nu >= 0 
#   Exceptional Return Values: GSL_EDOM, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_bessel_Knu (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Knu, "libgsl"), Cdouble, (Cdouble, Cdouble), nu,
        x )
end


# These routines compute the irregular modified Bessel function of fractional
# order \nu, K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Knu_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Knu_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), nu, x, result )
end


# These routines compute the logarithm of the irregular modified Bessel
# function of fractional order \nu, \ln(K_\nu(x)) for x>0, \nu>0.
# 
#   Domain: x > 0, nu >= 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_bessel_lnKnu (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_lnKnu, "libgsl"), Cdouble, (Cdouble, Cdouble),
        nu, x )
end


# These routines compute the logarithm of the irregular modified Bessel
# function of fractional order \nu, \ln(K_\nu(x)) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_lnKnu_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_lnKnu_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), nu, x, result )
end


# These routines compute the scaled irregular modified Bessel function of
# fractional order \nu, \exp(+|x|) K_\nu(x) for x>0, \nu>0.
# 
#   Domain: x > 0, nu >= 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_bessel_Knu_scaled (nu::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_bessel_Knu_scaled, "libgsl"), Cdouble, (Cdouble,
        Cdouble), nu, x )
end


# These routines compute the scaled irregular modified Bessel function of
# fractional order \nu, \exp(+|x|) K_\nu(x) for x>0, \nu>0.
# 
#   Returns: Cint
function gsl_sf_bessel_Knu_scaled_e (nu::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_bessel_Knu_scaled_e, "libgsl"), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), nu, x, result )
end
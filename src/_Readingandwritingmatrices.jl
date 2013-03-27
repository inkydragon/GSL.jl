#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.4.4 Reading and writing matrices #
######################################
export gsl_matrix_fwrite, gsl_matrix_fread, gsl_matrix_fprintf,
       gsl_matrix_fscanf


# This function writes the elements of the matrix m to the stream stream in
# binary format.  The return value is 0 for success and GSL_EFAILED if there
# was a problem writing to the file.  Since the data is written in the native
# binary format it may not be portable between different architectures.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_matrix_fwrite (stream::Ptr{FILE}, m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_fwrite, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_matrix}), stream, m )
end


# This function reads into the matrix m from the open stream stream in binary
# format.  The matrix m must be preallocated with the correct dimensions since
# the function uses the size of m to determine how many bytes to read.  The
# return value is 0 for success and GSL_EFAILED if there was a problem reading
# from the file.  The data is assumed to have been written in the native binary
# format on the same architecture.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_matrix_fread (stream::Ptr{FILE}, m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_fread, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_matrix}), stream, m )
end


# This function writes the elements of the matrix m line-by-line to the stream
# stream using the format specifier format, which should be one of the %g, %e
# or %f formats for floating point numbers and %d for integers.  The function
# returns 0 for success and GSL_EFAILED if there was a problem writing to the
# file.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_matrix_fprintf (stream::Ptr{FILE}, m::Ptr{gsl_matrix}, format::Ptr{Cchar})
    ccall( (:gsl_matrix_fprintf, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_matrix}, Ptr{Cchar}), stream, m, format )
end


# This function reads formatted data from the stream stream into the matrix m.
# The matrix m must be preallocated with the correct dimensions since the
# function uses the size of m to determine how many numbers to read.  The
# function returns 0 for success and GSL_EFAILED if there was a problem reading
# from the file.
# 
#   Returns: Cint
#XXX Unknown input type stream::Ptr{FILE}
function gsl_matrix_fscanf (stream::Ptr{FILE}, m::Ptr{gsl_matrix})
    ccall( (:gsl_matrix_fscanf, "libgsl"), Cint, (Ptr{FILE},
        Ptr{gsl_matrix}), stream, m )
end
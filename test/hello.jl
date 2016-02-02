# Hello world example, similar to the Boost.Python hello world

println("Running hello.jl...")

using CppWrapper
using Base.Test

# Wrap the functions defined in C++
wrap_modules(joinpath(Pkg.dir("CppWrapper"),"deps","usr","lib","libhello"))

# Output:
@show CppHello.greet()

# Test the result
@test CppHello.greet() == "hello, world"

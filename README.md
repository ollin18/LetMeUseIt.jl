[![Build Status](https://travis-ci.com/ollin18/LetMeUseIt.jl.svg?branch=master)](https://travis-ci.com/ollin18/LetMeUseIt.jl)

**LetMeUseIt** is a extremely minimalist package that has the sole purpose of handling your script and Dockerfiles dependencies in an clean and easy way.

No more running scripts like:

> using pkg1
>
> using pkg2
>
> using pkg3
>
> using pkg4
>
> .
>
> .
>
> .

just to wait for those which will fail because we haven't installed them yet. Now you just need to use **LetMeUseIt** and make an array out of the packages that you need with their names as symbols and let it handle them.

```julia
using LetMeUseIt

packages = [:OhMyREPL,:DifferentialEquations,:GLM,:Plots,:LightGraphs,:Flux]

useit(packages)
```
Installation

```julia
]add https://github.com/ollin18/LetMeUseIt.jl
```

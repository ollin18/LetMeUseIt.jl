module LetMeUseIt
    using Pkg
    export useit

    function useit(list::Array{Symbol})
        installed = [key for key in keys(Pkg.installed())]
        strpackages = @. string(list)
        uninstalled = setdiff(strpackages,installed)

        map(Pkg.add,uninstalled)
        for package ∈ packages
            @eval using $package
        end
    end

end # module

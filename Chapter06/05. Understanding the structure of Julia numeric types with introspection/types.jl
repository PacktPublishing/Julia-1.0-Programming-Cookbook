function printsubtypes(T, indent=0)
    sT = subtypes(T)
    println(" "^indent, T, isempty(sT) ? "" : ":")
    for S in sT
        printsubtypes(S, indent + 1)
    end
end

function supertypes(T)
    print(T)
    if T != Any
        print(" <: ")
        S = supertype(T)
        supertypes(S)
    end
end

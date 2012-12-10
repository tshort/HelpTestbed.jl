
module Help
export @help, help, apropos

## function help(keyword)
##     # Look in Base first.
##     Base.help(keyword)
##     # Need to check if keyword is a package
##     # ...
##     # Do we then try to look in all packages, like apropos, but just looking for a matching keyword?
## end

import Base.help, Base.apropos

function help(f::Function, types)
    whicht(f, types)   # prints out the signature and the source location
    println()
    srcpath = split_path(function_loc(f, types)[1]) # location of the source
    if srcpath[end - 1] == "src"  # the function's defined in a package (../something/src/something.jl)
        help(srcpath[end - 2], string(f))
    else
        Base.help(f)
    end
end

# priority of locations and extensions that are searched
txt_search_locations = ["txt" ".txt"
                        "."    ".txt"
                        "md"    ".md"
                        "."    ".md"
                        "rst" ".rst"
                        "."    ".rst"]
browser_search_locations = ["html" ".html"
                            "."     ".html"
                            "."     ".md"   # we could auto-convert these in the web server
                            "md"    ".md"
                            "."     ".rst"
                            "rst"   ".rst"]


function get_help_location(docpath, filename)
    file_path(docpath, "_txt", filename * ".txt")
end

function get_help_location(docpath, filename, search_location)
    for i in 1:size(search_location, 1)
        relative_location = search_location[i,1]
        file_ext = search_location[i,2]
        # if filename == sub/fname   &  relative_location == rst
        # try docpath/rst/sub/filename.ext
        fullname = file_path(docpath, relative_location, filename * file_ext)
        if isfile(fullname)
            return fullname
        end
        # try docpath/sub/rst/filename.ext
        sname = split_path(filename)
        if length(sname) > 1
            insert(sname, length(sname), relative_location)
            fullname = file_path(docpath, sname[1:end-1]..., sname[end] * file_ext)
            if isfile(fullname)
                return fullname
            end    
        end    
    end
    nothing
end

function help(packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    rx = r"(\w*)\W\W*([\/\w]*)\W\W*(.*)"
    for idx in 1:length(jl_index) 
        m = match(rx, jl_index[idx])
        if m != nothing && m.captures[1] == keyword
        @show m.captures
            println("Package `$(packagename)`,  $(keyword)")
            println()
            println(m.captures[3])
            println()
            help_filename = get_help_location(docpath, m.captures[2], txt_search_locations)
            if help_filename == nothing error("Can't find help file $docpath $(m.captures[2])") end
            println(open(readall, help_filename))
        end
    end
end

## function apropos(keyword::String)
##     # look in base then look in all packages?
## end

function apropos(packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    for idx in 1:length(jl_index)
        # needs work...
        found = match(Regex("\w*(" * keyword * ")\w\W.*", PCRE.CASELESS), jl_index[idx]) != nothing ||
                match(Regex("(\w*)\W*(\w*)\W*\w*(" * keyword * ").*", PCRE.CASELESS), jl_index[idx]) != nothing
        if found
            ml = match(r"(\w*)\W*(\w*)\W*(.*)", jl_index[idx])
            println(packagename * "\t\t" * ml.captures[1] * "\t\t" * ml.captures[3])
        end
    end
end

## @help mydataframe["col1"] 
## @help DataFrames.ref
## @help DataFrames ref
## help(DataFrames.ref)
## help("DataFrames", "ref")


help_helper(packagename, keyword) = :( help($(string(packagename)), $(string(keyword))) )
help_helper(sym::Symbol) = :( help($(esc(sym))) )
function help_helper(ex::Expr) 
    # CASE 1: a symbol that may be a function or other type
    #         @help DataFrames.DataVec
    if ex.head == :(.) 
        return :( help($(esc(ex))) )
    # CASE 2: some sort of function call
    #         @help plot(x,y)
    #         @help x*y
    #         @help mydataframe["col1"] 
    elseif head == :call
        typofargs = length(ex.args) > 1 ? [:(typeof($(esc(x)))) for x in ex.args[2:end]] : []
        tpl = expr(:tuple, typofargs...)
        return :( help($(ex.args[1]), $(tpl)))
    elseif ex.head == :ref    # array indexing isn't a call
        typofargs = length(ex.args) > 0 ? [:(typeof($(esc(x)))) for x in ex.args] : []
        tpl = expr(:tuple, typofargs...)
        return :( help(ref, $(tpl)))
    else
        # Could handle things like comparisons, comprehensions, and other special expression parsing
        error("Unsupported @help expression")
    end
end

macro help(args...)
    help_helper(args...)
end



function webhelp(keyword::String)

end

function webhelp(packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    rx = r"(\w*)\W*(\w*)\W*(.*)"
    for idx in 1:length(jl_index) 
        m = match(rx, jl_index[idx])
        if m != nothing && m.captures[1] == keyword
            browserlaunch(file_path(docpath, "_html", m.captures[2] * ".html"))
        end
    end
end


macro webhelp()
end




## @help mydataframe["col1"] 
## @help DataFrames.ref
## @help DataFrames ref
## help(DataFrames.ref)
## help("DataFrames", "ref")

end  # module Help



module Modelica

export MyType

import Base.sin, Base.acos, Base.ref
# let's just define a few things that are in doc/

Resistor() = 1
Resistor(a::Int) = 2

type Capacitor
   a
   b
end

type MyType
   a
end

sin(x::MyType) = Base.sin(x)
acos(x::MyType) = Base.acos(x)

ref(x::MyType) = "0 arg"
ref(x::MyType, a) = "1 arg"
ref(x::MyType, a::Int) = "1 arg, int"
ref(x::MyType, a, b) = "2 arg"

end  # module Modelica


## Work needed to make this "professional":
##   * Make `help` and `apropos` return objects
##     that are then printed
##   * Integrate better with base help
##   * Document the documentation
##   * More error checking
##   * Maybe make `help` output configurable, so
##     the user can select browser or text output.


module Help
import Base.show, Base.write, Base.print, Base.close
export @help, help, help_search, apropos
export FormattedIO
export IOFormat, TextFormat, TextHelp, MarkdownFormat, MarkdownHelp



abstract IOFormat   # format of IO (text, Markdown, HTML, etc.)
abstract MarkdownFormat <: IOFormat
abstract TextFormat <: IOFormat
type TextHelp <: TextFormat
end
type MarkdownHelp <: MarkdownFormat
end

type FormattedIO{T} <: IO
    io::IO  # where it's really written
end
FormattedIO() = FormattedIO{TextHelp}(OUTPUT_STREAM)
FormattedIO(io) = FormattedIO{TextHelp}(io)

close{T<:IOFormat}(io::FormattedIO{T}) = close(io.io)
## close{T<:IOFormat}(io::FormattedIO{T}) = close(io.io)

print(io::FormattedIO, args...) = print(io.io, args...)
## show(io::FormattedIO, args...) = show(io.io, args...)

global HELP_OUTPUT = FormattedIO()
global HELP_OUTPUT = FormattedIO{MarkdownHelp}(OUTPUT_STREAM)

_vstring(s) = string(s)
_vstring(s::Vector) = map(_vstring, s)
_vstring{T<:String}(s::T) = s
_vstring{T<:String}(s::Vector{T}) = s
function paste{T<:String}(s::Vector{T}...)
    sa = {s...}
    N = max(length, sa)
    res = fill("", N)
    for i in 1:length(sa)
        Ni = length(sa[i])
        k = 1
        for j = 1:N
            res[j] = strcat(res[j], sa[i][k])
            if k == Ni   # This recycles array elements.
                k = 1
            else
                k += 1
            end
        end
    end
    res
end
# The following converts all arguments to Vector{<:String} before
# calling paste.
function paste(s...)
    converted = map(vcat * _vstring, {s...})
    paste(converted...)
end

write(s::FormattedIO, x::Uint8) = write(s.io, x)
print(io::FormattedIO, s::Symbol) = print(io.io, s)

function show_delim_vect(io, itr, op, delim, cl, delim_one)
    print(io, op)
    for idx in 1:length(itr)
        show(io, itr[idx])
        print(io, delim)
    end
    print(io, cl)
    nothing
end

function show(io::FormattedIO{MarkdownHelp}, m::Method)
    tv = m.tvars
    if !isa(tv,Tuple)
        tv = (tv,)
    end
    if !isempty(tv)
        show_delim_vect(io, tv, '{', ',', '}', false)
    end
    show_delim_vect(io, m.sig, '(', ',', ')', true)
    li = m.func.code
    if li.line > 0
        print(io, " at [", li.file, "](", find_in_path(string(li.file)), "#", li.line, ")")
    end
end

function show(io::FormattedIO{MarkdownHelp}, mt::MethodTable)
    name = mt.name
    println(io, "Methods for generic function *", name, "*")
    d = mt.defs
    while !is(d,())
        pkg = find_package(d)
        # Includes a link to bring up help for this specific version
        if pkg != nothing 
            print(io, "[", name, "](/HELP/", pkg, "/", name, ")")
        else
            print(io, name)  
        end
        show(io, d)
        d = d.next
        if !is(d,())
            println(io)
        end
    end
end

function show(io::FormattedIO{MarkdownHelp}, typ::Union(BitsKind))
    name = string(typ)
    print(io, "[", name, "](/HELP/", name, ")")
end

function show(io::FormattedIO{MarkdownHelp}, typ::Union(AbstractKind,CompositeKind))
    try  # I'm not sure why I need this try, but something gets confused, and typ is a TypeConstructor occasionally
         # reproduce: show(Help.FormattedIO{Help.MarkdownHelp}(OUTPUT_STREAM), methods(ref))
        print(io, "[", typ.name, "](/HELP/", typ.name, ")")
    end
    if length(typ.parameters) > 0
        print(io,"{")
        for i in 1:length(typ.parameters)
            show(io, typ.parameters[i])
            print(io, ",")
        end
        print(io,"}")
    end
end

function show(io::FormattedIO{MarkdownHelp}, x::TypeConstructor)
    show(io, x.body)
end

function show(io::FormattedIO{MarkdownHelp}, typ::UnionKind)
    show_delim_vect(io, typ.types, '(', ',', ')', true)
end

function whicht(io::IO, f, types)
    for m = methods(f, types)
        if isa(m[3],LambdaStaticData)
            lsd = m[3]::LambdaStaticData
            d = f.env.defs
            while !is(d,())
                if is(d.func.code, lsd)
                    print(io, f.env.name)
                    show(io, d); println(io)
                    return
                end
                d = d.next
            end
        end
    end
end

function _jl_print_help_entries(io::IO, entries)
    first = true
    for desc in entries
        if !first
            println(io)
        end
        println(io, strip(desc))
        first = false
    end
end

help_for(io::IO, s::String) = help_for(io, s, 0)
function help_for(io::IO, fname::String, obj)
    Base._jl_init_help()
    found = false
    if contains(fname, '.')
        if has(_jl_help_function_dict, fname)
            Base._jl_print_help_entries(io, _jl_help_function_dict[fname])
            found = true
        end
    else
        macrocall = ""
        if begins_with(fname, '@')
            sfname = fname[2:]
            macrocall = "@"
        else
            sfname = fname
        end
        if has(Base._jl_help_module_dict, fname)
            allmods = Base._jl_help_module_dict[fname]
            alldesc = {}
            for mod in allmods
                mod_prefix = isempty(mod) ? "" : mod * "."
                append!(alldesc, Base._jl_help_function_dict[macrocall * mod_prefix * sfname])
            end
            _jl_print_help_entries(io, alldesc)
            found = true
        end
    end
end

help(args...) = help(HELP_OUTPUT::FormattedIO, args...)

function base_help(io::IO, keyword)
    Base._jl_init_help()
    if !has(Base._jl_help_category_dict, keyword)
        # if it's not a category, try another named thing
        help_for(io, string(keyword))
    else
        for func = Base._jl_help_category_dict[keyword]
            print(io, func, " ")
        end
    end
end

function help(io::IO, keyword)
    base_help(io, keyword)
    println(io)
end

function help(io::IO, keyword::Union(Function, Type))
    base_help(io, keyword)
    println(io)
    show(io, methods(keyword))
end

function method_loc(f::Union(Function,CompositeKind), types)
    m = methods(f, types)
    if length(m) > 0
        lsd = m[1][3]
    else
        return ""
    end
    if lsd.line > 0
        find_in_path(string(lsd.file))
    end
end
function method_loc(m::Method)
    li = m.func.code
    if li.line > 0
        find_in_path(string(li.file))
    end
end

find_path(f::Function, types) = split_path(function_loc(f, types)[1]) # location of the source
# the following seems kludgy
find_path(f::Symbol, types) = split_path(function_loc(eval(f), types)[1])

    
function find_package(args...)
    srcpath = split_path(method_loc(args...))
    if length(srcpath) == 0
        return nothing
    end
    if srcpath[end - 1] == "src"  # the function's defined in a package (../something/src/something.jl)
        return srcpath[end - 2]
    else
        return nothing
    end
end

function help(io::IO, f::Function, types)
    whicht(io, f, types)   # prints out the signature and the source location
    println(io)
    pkg = find_package(f, types)
    if pkg != nothing
        help(io, pkg, string(f))
    else
        base_help(io, f)
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

search_locations(io::IOStream) = txt_search_locations
search_locations(io::FormattedIO{TextHelp}) = txt_search_locations
search_locations(io::FormattedIO{MarkdownHelp}) = browser_search_locations
                            

function get_help_location(io, docpath, filename)
    loc = search_locations(io)
    for i in 1:size(search_locations(io), 1)
        relative_location = loc[i,1]
        file_ext = loc[i,2]
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

function help(io::IO, packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    rx = r"(\S+)\s+(\S+)\s+(.*)"
    for idx in 1:length(jl_index) 
        m = match(rx, jl_index[idx])
        if m != nothing && m.captures[1] == keyword
            ## @show m.captures
            println(io, "Package `$(packagename)`,  $(keyword)")
            println(io)
            println(io, m.captures[3])
            println(io)
            # TODO - if the filename (m.captures[2]) has an extension, we should try to load that directly
            #        useful for pdfs, movies, and similar
            help_filename = get_help_location(io, docpath, m.captures[2])
            if help_filename == nothing error("Can't find help file $docpath $(m.captures[2])") end
            println(io, open(readall, help_filename))
        end
    end
end

help_search(args...) = help_search(HELP_OUTPUT::FormattedIO, args...)

function help_search(io::IO, keyword::String)
    Base.apropos(keyword)
    println("\n -- Package documentation available -- \n")
    dirs = readdir(julia_pkgdir())
    for package in dirs
        if isdir(file_path(julia_pkgdir(), package))
            fname = file_path(julia_pkgdir(), package, "doc", "_JL_INDEX_")
            if isfile(fname)
                help_search(io, package, keyword)
            end
        end
    end
end
apropos = help_search

function show_keywords(io, packagename, keyword, description)
    println(io, packagename * "\t\t" * keyword * "\t\t" * description)
end
function show_keywords(io::FormattedIO{MarkdownHelp}, packagename, keyword, description)
    println(io, "[", packagename, "](/HELP/", packagename, "/", packagename, ")\t\t[",
                keyword, "](/", packagename, "/", keyword, ")", 
                "\t\t" * description)
end

function help_search(io::IO, packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    for idx in 1:length(jl_index)
        found = match(Regex(L"^\S*" * keyword * ".*", PCRE.CASELESS), jl_index[idx]) != nothing ||
                match(Regex(L"^\S+\s+\S+\s.*" * keyword * ".*", PCRE.CASELESS), jl_index[idx]) != nothing
        if found
            ml = match(r"(\S+)\s+(\S+)\s+(.*)", jl_index[idx])
            show_keywords(io, packagename, ml.captures[1], ml.captures[3])
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
    elseif ex.head == :call
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

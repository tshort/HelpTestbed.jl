
module Help

function help(keyword::String)

end

# maybe a priority of locations and extensions could be searched (not implemented)
txt_search_locations = ["_txt" ".txt"
                        "."    ".txt"
                        "."    ".md"
                        "."    ".rst"]
web_search_locations = ["_html" ".html"
                        "."     ".html"
                        "."     ".md"   # we could auto-convert these in the web server
                        "."     ".rst"]


function help(packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    rx = r"(\w*)\W*(\w*)\W*(.*)"
    for idx in 1:length(jl_index) 
        m = match(rx, jl_index[idx])
        if m != nothing && m.captures[1] == keyword
            println("Package `$(packagename)`,  $(keyword)")
            println()
            println(m.captures[3])
            println()
            println(open(readall, file_path(docpath, "_txt", m.captures[2] * ".txt")))
        end
    end
end

function apropos(keyword::String)

end

function apropos(packagename::String, keyword::String)
    packagepath = file_path(julia_pkgdir(), packagename)
    docpath = file_path(packagepath, "doc")
    jl_index_filename = file_path(docpath, "_JL_INDEX_")
    jl_index = open(readlines, jl_index_filename)
    for idx in 1:length(jl_index) 
        m = match(Regex(keyword, PCRE.CASELESS), jl_index[idx])
        if m != nothing 
            ml = match(r"(\w*)\W*(\w*)\W*(.*)", jl_index[idx])
            println(packagename * "\t\t" * ml.captures[1] * "\t\t" * ml.captures[3])
        end
    end
end


macro help()
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

# let's just define a few things that are in doc/

Resistor() = 1
Resistor(a::Int) = 2

sin(x) = Base.sin(x)
acos(x) = Base.acos(x)

type Capacitor
   a
   b
end


end  # module Modelica

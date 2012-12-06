

a = readlines(open("_JL_INDEX_raw"))

f = open("_JL_INDEX_", "w")
for idx in 1:length(a)
    # this version gets the file index with the .html at the end and the #whatever bookmark
    ## m = match(r"  !.*\[(\w*)\]\((.*\.html#[\w\.]*)\)\W*(.*)", a[idx])
    # this version gets just the base file name
    m = match(r"  !.*\[(\w*)\]\((.*)\.html#[\w\.]*\)\W*(.*)", a[idx])
    try
        println(f, m.captures[1] * "  " * m.captures[2] * "  " * m.captures[3])
    end
end
close(f)

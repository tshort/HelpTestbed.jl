load("HTTP")

module Server


function server(req, res)
    htmlpath = file_path(julia_pkgdir(), "HelpTestbed", "html") 
    path = req.path
    spath = split_path(req.path)
    @show req
    @show res
    @show spath
    if length(spath) > 0 && spath[1] != ""
        fname = file_path(htmlpath, path)
        @show fname
        if isfile(fname)
            return {200, open(readall, fname)}
        else
            return {200, "body\n"}
        end
    elseif spath[1] == "" && spath[2] == "HELP"
        if length(spath) == 2 
            return {200, open(readall, file_path(htmlpath, "HELP.html"))}
        elseif length(spath) == 3
            io = FormattedIO{MarkdownHelp}(IOString())
            help(io, spath[3])
            help_payload = bytestring(io.io)
            ## @show help_payload 
            close(io)
            return {200, help_payload}
        elseif length(spath) == 4
            io = FormattedIO{MarkdownHelp}(IOString())
            help(io, spath[3], spath[4])
            help_payload = bytestring(io.io)
            ## @show help_payload 
            close(io)
            return {200, help_payload}
        else
            return nothing
        end
    else
        return nothing
    end
end

## BasicServer.bind(8000, server, true)


## BasicServer.bind(8001, server, true)

## BasicServer.bind(8002, server, true)

## BasicServer.bind(8003, server, true)

end # module Server

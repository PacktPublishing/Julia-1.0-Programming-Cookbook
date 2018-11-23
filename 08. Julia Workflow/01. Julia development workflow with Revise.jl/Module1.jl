module Module1

using HTTP
using JSON

export getcoinprices

function getcoinprices(dateFrom::String,dateTo::String)
    # dateFrom > dateTo && return Dict()
    url = string("https://api.coindesk.com/v1/bpi/historical/close.json?currency=USD&start=",
                 dateFrom, "&end=", dateTo)
    res = HTTP.request("GET", url ,verbose=0)
    dat = JSON.parse(join(readlines(IOBuffer(res.body)), " "))
    haskey(dat, "bpi") ? dat["bpi"] : Dict()
end

end # module

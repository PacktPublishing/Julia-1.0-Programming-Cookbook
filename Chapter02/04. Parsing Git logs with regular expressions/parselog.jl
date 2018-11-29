using DataFrames, DataFramesMeta

function parselog(lines)
    author = r"^Author: ([^<]*) <"
    insc = r"^.+changed, ([0-9]+) insertion"
    delc = r"^.+changed.*, ([0-9]+) deletion"
    authordata = DataFrame(author=String[], action=String[], count=Int[])
    curauthor = ""
    for line in lines
        m = match(author, line) 
        m === nothing || (curauthor = m[1])
        m = match(insc, line)
        m === nothing || push!(authordata,
                               (curauthor, "insertion", parse(Int, m[1])))
        m = match(delc, line)
        m === nothing || push!(authordata,
                               (curauthor, "deletion", parse(Int, m[1])))
    end
    authorstats = @by(authordata, [:author, :action], 
    count=sum(:count))
    unstack(authorstats, :action, :count)
end

function gitstats(dir)
    if isdir(dir)
        println("\nAnalyzing")
        cd(dir) do
            try
                res = read(`git log --stat`, String)
                lines = split(res, ['\r', '\n'], keepempty=false)
                df = parselog(lines)
                df.all = coalesce.(df.deletion, 0) .+
                         coalesce.(df.insertion, 0)
                display(sort!(df, :all, rev=true))
            catch
                error("Running git log failed")
            end
        end
    else
        error("$dir is not a directory")
    end
end

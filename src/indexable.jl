function getindex(x::CompoundPeriod, idx::Int)
    n = length(x.periods)
    (idx == 0 || idx > n) && throw(BoundsError("$x [$idx]"))
    return x.periods[idx]
end

reverseind(x::CompoundPeriod, idx) = length(x) - idx + 1
reverseind(x::Array{Period,1}, idx) = length(x) - idx + 1
reverseind(x::ReverseCompoundPeriod, idx) = length(x) - idx + 1

function getindex(x::ReverseCompoundPeriod, idx::Int)
    n = length(x.periods)
    (idx == 0 || idx > n) && throw(BoundsError("$x [$idx]"))
    return x.periods[reverseind(x.periods,idx)]
end

reverseind(x::Period, idx) = idx == 1 ? 1 : throw(BoundsError("$x [$idx]"))

function getindex(x::Period, idx::Int)
    idx != 1 && throw(BoundsError("index must be 1"))
    return x
end


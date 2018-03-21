__precompile__()

module CompoundPeriods

export Period, CompoundPeriod,
   typesof, canonical

import Base: start, done, next, getindex, eltype, length,
    min, max, minmax, typemin, typemax

import Dates: Period, CompoundPeriod,
    Year, Month, Day, Hour, Minute, Second, Millisecond, Microsecond, Nanosecond

using Dates

include("timeunitper.jl")
include("iterable.jl")
include("indexable.jl")
include("misc.jl")
include("canonical.jl")
include("selector.jl")
include("compare.jl")


end # Compound Periods

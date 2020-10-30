"""

The exported names are
$(EXPORTS)
"""
module CellData

using Test
using DocStringExtensions
using FillArrays

using Gridap.Helpers
using Gridap.Arrays
using Gridap.TensorValues
using Gridap.Fields
using Gridap.Geometry
using Gridap.Integration

import Gridap.Arrays: get_array
import Gridap.Arrays: evaluate!
import Gridap.Fields: gradient
import Gridap.Fields: ∇∇
import Gridap.Integration: get_coordinates
import Gridap.Integration: get_weights

import Gridap.TensorValues: inner, outer, double_contraction, symmetric_part
import LinearAlgebra: det, tr, cross, dot
import Base: inv, abs, abs2, *, +, -, /, adjoint, transpose

export gradient
export ∇∇
export inner, outer, double_contraction, symmetric_part
export det, tr, cross, dot

export DomainStyle
export ReferenceDomain
export PhysicalDomain
export CellDatum
export get_cell_data
export get_triangulation
export change_domain
export test_cell_datum
export CellPoint
export get_cell_points
export CellField
export GenericCellField
export CellWeight
export CellQuadrature

include("CellDataInterface.jl")

include("CellFields.jl")

include("CellQuadratures.jl")

end # module


struct MultiFieldFEFunction
  free_values::AbstractVector
  space::MultiFieldFESpace
  blocks::Vector{<:SingleFieldFEFunction}
end

FEFunctionStyle(::Type{MultiFieldFEFunction}) = Val{true}()

get_free_values(f::MultiFieldFEFunction) = f.free_values

get_fe_space(f::MultiFieldFEFunction) = f.space

num_fields(m::MultiFieldFEFunction) = length(m.blocks)

Base.iterate(m::MultiFieldFEFunction) = iterate(m.blocks)

Base.iterate(m::MultiFieldFEFunction,state) = iterate(m.blocks,state)

Base.getindex(m::MultiFieldFEFunction,field_id::Integer) = m.blocks[field_id]


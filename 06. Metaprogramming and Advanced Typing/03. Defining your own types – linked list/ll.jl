struct ListNode{T}
    value::T
    next::Union{ListNode{T}, Nothing}
end

mutable struct LinkedList{T}
    head::Union{ListNode{T}, Nothing}
end

LinkedList(T::Type) = LinkedList{T}(nothing)

Base.iterate(ll::LinkedList) = ll.head === nothing ? nothing : (ll.head.value, ll.head)
Base.iterate(ll::LinkedList{T}, state::ListNode{T}) where T =
    state.next === nothing ? nothing : (state.next.value, state.next)

function Base.getindex(ll::LinkedList, idx::Integer)
    idx < 1 && throw(BoundsError("$idx is less than 1"))
    for v in ll
        idx -= 1
        idx == 0 && return v
    end
    throw(BoundsError("index beyond end of linked list"))
end

function Base.pushfirst!(ll::LinkedList{T}, items::T...) where T
    for item in reverse(items)
        ll.head = ListNode{T}(item, ll.head)
    end
    ll
end

Base.show(io::IO, ll::LinkedList{T}) where T =
    print(io, "LinkedList{$T}[" * join(ll, ", ") * "]")

Base.eltype(ll::LinkedList{T}) where T = T

Base.length(ll::LinkedList) = count(v -> true, ll)

Base.firstindex(ll::LinkedList) = 1
Base.lastindex(ll::LinkedList) = length(ll)

import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TessellationData where
  tileSet : Type
  adjacency : Prop
  coveringCondition : Prop
  noOverlap : Prop

structure TilingAdmittedObject where
  space : TilingSpace
  tessellation : TessellationData
  tileValid : Prop
  adjacencyValid : Prop
  coveringValid : Prop
  overlapFreeValid : Prop
  conclusion : tileValid ∧ adjacencyValid ∧ coveringValid ∧ overlapFreeValid

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.tileValid ∧ O.adjacencyValid ∧ O.coveringValid ∧ O.overlapFreeValid

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
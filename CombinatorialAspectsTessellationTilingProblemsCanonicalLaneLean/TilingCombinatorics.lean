import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilePrototype where
  shape : Type u
  matchingRules : List (Type u → Prop)

structure TilingInstance where
  prototype : TilePrototype
  covering : Set (Type u)
  adjacencyConstraints : Prop

structure TilingCombinatoricsPackage where
  finiteTileSet : Set TilePrototype
  coveringCondition : Prop
  adjacencyClosed : Prop

structure TilingCombinatoricsEvidence (P : TilingCombinatoricsPackage) where
  finiteTileSetClosed : P.finiteTileSet
  coveringConditionClosed : P.coveringCondition
  adjacencyClosedClosed : P.adjacencyClosed

def TilingCombinatoricsClosed (P : TilingCombinatoricsPackage) : Prop :=
  P.finiteTileSet ∧ P.coveringCondition ∧ P.adjacencyClosed

theorem tiling_combinatorics_closed_from_evidence
    (P : TilingCombinatoricsPackage) (E : TilingCombinatoricsEvidence P) :
    TilingCombinatoricsClosed P := by
  exact And.intro E.finiteTileSetClosed (And.intro E.coveringConditionClosed E.adjacencyClosedClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblems.TilingObjects

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblems

structure TilingPackage where
  tilingSpace : TilingSpace
  tileSet : Type u
  adjacencyRules : Prop
  periodicConstraints : Prop
  boundaryConditions : Prop
  coveringComplete : Prop
  overlapMinimal : Prop

def TilingPackageClosed (P : TilingPackage) : Prop :=
  P.adjacencyRules ∧ P.periodicConstraints ∧ P.boundaryConditions ∧
  P.coveringComplete ∧ P.overlapMinimal

end CombinatorialAspectsTessellationTilingProblems
end HautevilleHouse
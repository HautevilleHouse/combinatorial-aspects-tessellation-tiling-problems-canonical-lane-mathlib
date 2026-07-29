import HautevilleHouse.CombinatorialAspectsTessellationTilingProblems.TilingPackage

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblems

structure ColoringPackage (P : TilingPackage) where
  colorSet : Type v
  colorFunction : P.tilingSpace.carrier → colorSet
  properColoring : Prop
  chromaticNumber : ℕ
  coloringUnique : Prop

def ColoringPackageClosed (P : TilingPackage) (C : ColoringPackage P) : Prop :=
  C.properColoring ∧ C.coloringUnique

end CombinatorialAspectsTessellationTilingProblems
end HautevilleHouse
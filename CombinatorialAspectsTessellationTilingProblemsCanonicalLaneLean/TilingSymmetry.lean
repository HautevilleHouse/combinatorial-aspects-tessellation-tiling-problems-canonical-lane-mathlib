import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingSymmetryPackage (A : AdmissibleClass) where
  groupAction : Prop
  symmetryGroup : Prop
  tileOrbitClassification : Prop
  groupActionClosed : groupAction
  symmetryGroupClosed : symmetryGroup
  tileOrbitClassificationClosed : tileOrbitClassification

def TilingSymmetryClosed (A : AdmissibleClass) (P : TilingSymmetryPackage A) : Prop :=
  P.groupAction ∧ P.symmetryGroup ∧ P.tileOrbitClassification

theorem tiling_symmetry_closed_from_evidence (A : AdmissibleClass) (P : TilingSymmetryPackage A) :
    TilingSymmetryClosed A P := by
  exact And.intro P.groupActionClosed (And.intro P.symmetryGroupClosed P.tileOrbitClassificationClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
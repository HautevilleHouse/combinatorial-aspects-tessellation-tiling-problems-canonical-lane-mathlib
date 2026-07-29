import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure SphereTilingProblem where
  sphereDimension : ℕ
  tileShape : Type u
  coveringCondition : Prop
  nonoverlappingCondition : Prop
  symmetryGroupAction : Prop

def SphereTilingClosed (S : SphereTilingProblem) : Prop :=
  S.coveringCondition ∧ S.nonoverlappingCondition ∧ S.symmetryGroupAction

structure SphereTilingEvidence (S : SphereTilingProblem) where
  coveringConditionClosed : S.coveringCondition
  nonoverlappingConditionClosed : S.nonoverlappingCondition
  symmetryGroupActionClosed : S.symmetryGroupAction

theorem sphere_tiling_closed_from_evidence (S : SphereTilingProblem) (E : SphereTilingEvidence S) : SphereTilingClosed S := by
  exact And.intro E.coveringConditionClosed (And.intro E.nonoverlappingConditionClosed E.symmetryGroupActionClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure PeterWeylTiling where
  groupRepresentation : Type u
  irreducibleComponents : Type v
  decompositionComplete : Prop
  orthogonalityRelation : Prop
  spanSmoothFunctions : Prop

def PeterWeylTilingClosed (P : PeterWeylTiling) : Prop :=
  P.decompositionComplete ∧ P.orthogonalityRelation ∧ P.spanSmoothFunctions

structure PeterWeylTilingEvidence (P : PeterWeylTiling) where
  decompositionCompleteClosed : P.decompositionComplete
  orthogonalityRelationClosed : P.orthogonalityRelation
  spanSmoothFunctionsClosed : P.spanSmoothFunctions

theorem peter_weyl_tiling_closed_from_evidence (P : PeterWeylTiling) (E : PeterWeylTilingEvidence P) : PeterWeylTilingClosed P := by
  exact And.intro E.decompositionCompleteClosed (And.intro E.orthogonalityRelationClosed E.spanSmoothFunctionsClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

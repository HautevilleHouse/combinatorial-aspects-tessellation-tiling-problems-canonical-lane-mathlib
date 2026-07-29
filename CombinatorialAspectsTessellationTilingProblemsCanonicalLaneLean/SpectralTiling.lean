import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure SpectralTilingPackage (A : AdmissibleClass) where
  eigenValueCondition : Prop
  spectralTiling : Prop
  coveringCondition : Prop
  eigenValueConditionClosed : eigenValueCondition
  spectralTilingClosed : spectralTiling
  coveringConditionClosed : coveringCondition

def SpectralTilingClosed (A : AdmissibleClass) (P : SpectralTilingPackage A) : Prop :=
  P.eigenValueCondition ∧ P.spectralTiling ∧ P.coveringCondition

theorem spectral_tiling_closed_from_evidence (A : AdmissibleClass) (P : SpectralTilingPackage A) :
    SpectralTilingClosed A P := by
  exact And.intro P.eigenValueConditionClosed (And.intro P.spectralTilingClosed P.coveringConditionClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
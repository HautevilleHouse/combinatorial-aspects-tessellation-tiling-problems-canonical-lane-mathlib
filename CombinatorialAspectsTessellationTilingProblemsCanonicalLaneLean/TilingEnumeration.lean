import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingEnumerationPackage (A : AdmissibleClass) where
  tileTypes : List (TilingAdmittedObject)
  enumerationComplete : Prop
  congruenceClasses : Prop
  enumerationCompleteClosed : enumerationComplete
  congruenceClassesClosed : congruenceClasses

def TilingEnumerationClosed (A : AdmissibleClass) (P : TilingEnumerationPackage A) : Prop :=
  P.enumerationComplete ∧ P.congruenceClasses

theorem tiling_enumeration_closed_from_evidence (A : AdmissibleClass) (P : TilingEnumerationPackage A) :
    TilingEnumerationClosed A P := by
  exact And.intro P.enumerationCompleteClosed P.congruenceClassesClosed

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingEnumeration where
  tileTypes : List Type u
  cardinals : List ℕ
  periodicCondition : Prop
  aperiodicCondition : Prop

def TilingEnumerationClosed (E : TilingEnumeration) : Prop :=
  E.periodicCondition ∧ E.aperiodicCondition

structure TilingEnumerationEvidence (E : TilingEnumeration) where
  periodicConditionClosed : E.periodicCondition
  aperiodicConditionClosed : E.aperiodicCondition

theorem tiling_enumeration_closed_from_evidence (E : TilingEnumeration) (Ev : TilingEnumerationEvidence E) : TilingEnumerationClosed E := by
  exact And.intro Ev.periodicConditionClosed Ev.aperiodicConditionClosed

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

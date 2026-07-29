import canonicalLaneMathlib.AdmissibleClass

/-!
# Tiling Polyhedron Enumeration Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingPolyhedronEnumerationPackage where
  polyhedronList : Type u
  enumerationComplete : Prop
  convexityClassified : Prop
  symmetryGroupRecorded : Prop

structure TilingPolyhedronEnumerationEvidence (C : TilingPolyhedronEnumerationPackage) where
  enumerationCompleteClosed : C.enumerationComplete
  convexityClassifiedClosed : C.convexityClassified
  symmetryGroupRecordedClosed : C.symmetryGroupRecorded

def TilingPolyhedronEnumerationClosed (C : TilingPolyhedronEnumerationPackage) : Prop :=
  C.enumerationComplete ∧ C.convexityClassified ∧ C.symmetryGroupRecorded

theorem tiling_polyhedron_enumeration_closed_from_evidence
    (C : TilingPolyhedronEnumerationPackage) (E : TilingPolyhedronEnumerationEvidence C) :
    TilingPolyhedronEnumerationClosed C := by
  exact And.intro E.enumerationCompleteClosed
    (And.intro E.convexityClassifiedClosed E.symmetryGroupRecordedClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

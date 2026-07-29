import canonicalLaneMathlib.AdmissibleClass

/-!
# Tiling Covering Properties Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingCoveringPropertiesPackage where
  noGaps : Prop
  noOverlaps : Prop
  coveringComplete : Prop
  boundaryMeasureZero : Prop

structure TilingCoveringPropertiesEvidence (C : TilingCoveringPropertiesPackage) where
  noGapsClosed : C.noGaps
  noOverlapsClosed : C.noOverlaps
  coveringCompleteClosed : C.coveringComplete
  boundaryMeasureZeroClosed : C.boundaryMeasureZero

def TilingCoveringPropertiesClosed (C : TilingCoveringPropertiesPackage) : Prop :=
  C.noGaps ∧ C.noOverlaps ∧ C.coveringComplete ∧ C.boundaryMeasureZero

theorem tiling_covering_properties_closed_from_evidence
    (C : TilingCoveringPropertiesPackage) (E : TilingCoveringPropertiesEvidence C) :
    TilingCoveringPropertiesClosed C := by
  exact And.intro E.noGapsClosed
    (And.intro E.noOverlapsClosed
      (And.intro E.coveringCompleteClosed E.boundaryMeasureZeroClosed))

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

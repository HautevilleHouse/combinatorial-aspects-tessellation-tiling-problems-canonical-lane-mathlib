import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.PeriodicTiling

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure AperiodicityCriteria where
  noLatticeVector : Prop
  hierarchicalStructure : Prop
  substitutionRule : Type u → Type u

structure AperiodicTilingPackage {P : TilingCombinatoricsPackage} (A : AperiodicityCriteria) where
  substitutionMatrix : Type u
  inflationFactor : Nat
  hierarchicalMatching : Prop

structure AperiodicTilingEvidence {P : TilingCombinatoricsPackage} {A : AperiodicityCriteria} (AT : AperiodicTilingPackage A) where
  substitutionMatrixClosed : AT.substitutionMatrix
  inflationFactorClosed : AT.inflationFactor
  hierarchicalMatchingClosed : AT.hierarchicalMatching

def AperiodicTilingClosed {P : TilingCombinatoricsPackage} {A : AperiodicityCriteria} (AT : AperiodicTilingPackage A) : Prop :=
  AT.substitutionMatrix ∧ AT.inflationFactor ∧ AT.hierarchicalMatching

theorem aperiodic_tiling_closed_from_evidence
    {P : TilingCombinatoricsPackage} {A : AperiodicityCriteria} (AT : AperiodicTilingPackage A)
    (E : AperiodicTilingEvidence AT) : AperiodicTilingClosed AT := by
  exact And.intro E.substitutionMatrixClosed (And.intro E.inflationFactorClosed E.hierarchicalMatchingClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
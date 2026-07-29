import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingCombinatorics

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure PeriodicityPackage where
  lattice : Type u
  fundamentalDomain : Type u
  translationAction : Prop

structure PeriodicTilingPackage {P : TilingCombinatoricsPackage} (C : PeriodicityPackage) where
  latticeVectors : List (Type u → Type u)
  tileUnderLattice : Prop
  periodicityWitness : Prop

structure PeriodicTilingEvidence {P : TilingCombinatoricsPackage} {C : PeriodicityPackage} (PT : PeriodicTilingPackage C) where
  latticeVectorsClosed : PT.latticeVectors
  tileUnderLatticeClosed : PT.tileUnderLattice
  periodicityWitnessClosed : PT.periodicityWitness

def PeriodicTilingClosed {P : TilingCombinatoricsPackage} {C : PeriodicityPackage} (PT : PeriodicTilingPackage C) : Prop :=
  PT.latticeVectors ∧ PT.tileUnderLattice ∧ PT.periodicityWitness

theorem periodic_tiling_closed_from_evidence
    {P : TilingCombinatoricsPackage} {C : PeriodicityPackage} (PT : PeriodicTilingPackage C)
    (E : PeriodicTilingEvidence PT) : PeriodicTilingClosed PT := by
  exact And.intro E.latticeVectorsClosed (And.intro E.tileUnderLatticeClosed E.periodicityWitnessClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
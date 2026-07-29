import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingPeriodicityPackage where
  translationVectors : Type u
  periodicityCondition : Prop
  containsFundamentalDomain : Prop
  finiteTiling : Prop

structure TilingPeriodicityEvidence (P : TilingPeriodicityPackage) where
  periodicityConditionClosed : P.periodicityCondition
  containsFundamentalDomainClosed : P.containsFundamentalDomain
  finiteTilingClosed : P.finiteTiling

def TilingPeriodicityClosed (P : TilingPeriodicityPackage) : Prop :=
  P.periodicityCondition ∧ P.containsFundamentalDomain ∧ P.finiteTiling

theorem tiling_periodicity_closed_from_evidence (P : TilingPeriodicityPackage) (E : TilingPeriodicityEvidence P) :
    TilingPeriodicityClosed P := by
  exact And.intro E.periodicityConditionClosed (And.intro E.containsFundamentalDomainClosed E.finiteTilingClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
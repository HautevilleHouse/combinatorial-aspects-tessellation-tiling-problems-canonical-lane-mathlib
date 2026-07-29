import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingDualityPackage where
  primalTiling : Type u
  dualTiling : Type v
  dualExists : Prop
  bijectionExists : Prop
  incidencePreserved : Prop

structure TilingDualityEvidence (P : TilingDualityPackage) where
  dualExistsClosed : P.dualExists
  bijectionExistsClosed : P.bijectionExists
  incidencePreservedClosed : P.incidencePreserved

def TilingDualityClosed (P : TilingDualityPackage) : Prop :=
  P.dualExists ∧ P.bijectionExists ∧ P.incidencePreserved

theorem tiling_duality_closed_from_evidence (P : TilingDualityPackage) (E : TilingDualityEvidence P) :
    TilingDualityClosed P := by
  exact And.intro E.dualExistsClosed (And.intro E.bijectionExistsClosed E.incidencePreservedClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
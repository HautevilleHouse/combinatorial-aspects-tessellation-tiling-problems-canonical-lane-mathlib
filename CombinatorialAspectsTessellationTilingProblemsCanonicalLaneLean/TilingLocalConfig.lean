import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.TilingAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingLocalConfigPackage where
  tileSet : Type u
  neighborConstraints : Prop
  localConfigsEnumerated : Prop
  gluingCompatibility : Prop

structure TilingLocalConfigEvidence (P : TilingLocalConfigPackage) where
  neighborConstraintsClosed : P.neighborConstraints
  localConfigsEnumeratedClosed : P.localConfigsEnumerated
  gluingCompatibilityClosed : P.gluingCompatibility

def TilingLocalConfigClosed (P : TilingLocalConfigPackage) : Prop :=
  P.neighborConstraints ∧ P.localConfigsEnumerated ∧ P.gluingCompatibility

theorem tiling_local_config_closed_from_evidence (P : TilingLocalConfigPackage) (E : TilingLocalConfigEvidence P) :
    TilingLocalConfigClosed P := by
  exact And.intro E.neighborConstraintsClosed (And.intro E.localConfigsEnumeratedClosed E.gluingCompatibilityClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
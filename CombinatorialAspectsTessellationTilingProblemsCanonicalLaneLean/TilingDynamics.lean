import HautevilleHouse.CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean.AperiodicTiling

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure SubshiftDynamics where
  shiftAction : Type u → Type u
  invariantMeasures : Prop
  entropy : Prop

structure TilingDynamicsPackage {P : TilingCombinatoricsPackage} (S : SubshiftDynamics) where
  minimality : Prop
  uniqueErgodicity : Prop
  spectralProperties : Prop

structure TilingDynamicsEvidence {P : TilingCombinatoricsPackage} {S : SubshiftDynamics} (TD : TilingDynamicsPackage S) where
  minimalityClosed : TD.minimality
  uniqueErgodicityClosed : TD.uniqueErgodicity
  spectralPropertiesClosed : TD.spectralProperties

def TilingDynamicsClosed {P : TilingCombinatoricsPackage} {S : SubshiftDynamics} (TD : TilingDynamicsPackage S) : Prop :=
  TD.minimality ∧ TD.uniqueErgodicity ∧ TD.spectralProperties

theorem tiling_dynamics_closed_from_evidence
    {P : TilingCombinatoricsPackage} {S : SubshiftDynamics} (TD : TilingDynamicsPackage S)
    (E : TilingDynamicsEvidence TD) : TilingDynamicsClosed TD := by
  exact And.intro E.minimalityClosed (And.intro E.uniqueErgodicityClosed E.spectralPropertiesClosed)

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse
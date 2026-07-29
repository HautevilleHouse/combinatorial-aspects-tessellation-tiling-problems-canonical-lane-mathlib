import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

structure TilingAdmittedObject where
  tileType : Type
  planeOrManifold : Type
  tiling : planeOrManifold → Prop
  noGapsNoOverlaps : Prop
  conclusion : noGapsNoOverlaps

structure AdmissibleClass where
  object : TilingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TilingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.noGapsNoOverlaps

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

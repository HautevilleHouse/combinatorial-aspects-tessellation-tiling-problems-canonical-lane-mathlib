import HautevilleHouse.CombinatorialAspectsTessellationTilingProblems.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblems

structure TilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TilingAdmittedObject where
  space : TilingSpace
  finiteTiling : Prop
  simplyConnectedDomain : Prop
  tileType : Type
  tileTopology : TopologicalSpace tileType
  edgeCompatible : Prop
  vertexCompatible : Prop
  coloringFinite : Prop
  conclusion : finiteTiling ∧ edgeCompatible ∧ vertexCompatible

def TilingWitnessClosed (O : TilingAdmittedObject) : Prop :=
  O.finiteTiling ∧ O.edgeCompatible ∧ O.vertexCompatible

end CombinatorialAspectsTessellationTilingProblems
end HautevilleHouse
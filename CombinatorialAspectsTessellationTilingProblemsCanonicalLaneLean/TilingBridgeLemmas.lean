import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TilingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsTessellationTilingProblemsCanonicalLaneLean
end HautevilleHouse

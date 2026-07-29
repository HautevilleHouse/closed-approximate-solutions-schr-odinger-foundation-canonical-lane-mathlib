import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedApproximateSolutionsSchr\"odingerFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchr\"odingerFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SchrOdingerClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse.ClosedApproximateSolutionsSchr\"odingerFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

-- Root file for Closed Approximate Solutions Schr\"odinger Foundation

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end HautevilleHouse.ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ApproxSolutionAdmittedObject where
  domain : ApproximateSolutionDomain
  equationSatisfied : Prop
  errorControlled : Prop
  conclusion : equationSatisfied ∧ errorControlled

structure ApproxSolutionEndgameState where
  object : ApproxSolutionAdmittedObject

def ApproxSolutionWitnessClosed (O : ApproxSolutionAdmittedObject) : Prop :=
  O.conclusion

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
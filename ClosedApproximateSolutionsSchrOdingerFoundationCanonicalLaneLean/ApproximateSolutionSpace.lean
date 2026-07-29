import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure ApproximateSolutionSpacePackage where
  solutionSet : Type u
  errorBound : ℝ
  galerkinProjection : Type v
  residualNorm : ℝ
  spaceComplete : Prop
  errorControlled : Prop

structure ApproximateSolutionSpaceEvidence (A : ApproximateSolutionSpacePackage) where
  spaceCompleteClosed : A.spaceComplete
  errorControlledClosed : A.errorControlled

def ApproximateSolutionSpaceClosed (A : ApproximateSolutionSpacePackage) : Prop :=
  A.spaceComplete ∧ A.errorControlled

theorem approximate_solution_space_closed_from_evidence (A : ApproximateSolutionSpacePackage) (E : ApproximateSolutionSpaceEvidence A) :
    ApproximateSolutionSpaceClosed A := by
  exact And.intro E.spaceCompleteClosed E.errorControlledClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

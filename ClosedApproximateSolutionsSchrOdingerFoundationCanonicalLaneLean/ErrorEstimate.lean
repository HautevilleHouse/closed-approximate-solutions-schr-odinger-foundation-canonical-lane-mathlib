import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundation

structure ErrorEstimatePackage where
  approximation : ApproximateSolutionPackage
  errorFunctional : (solution : Type) → ℝ
  residual : Prop
  aprioriBound : ℝ
  aposterioriBound : ℝ

structure ErrorEstimateEvidence (E : ErrorEstimatePackage) where
  residualClosed : E.residual
  aprioriBoundClosed : E.aprioriBound > 0
  aposterioriBoundClosed : E.aposterioriBound > 0

def ErrorEstimateClosed (E : ErrorEstimatePackage) : Prop :=
  E.residual ∧ E.aprioriBound > 0 ∧ E.aposterioriBound > 0

theorem error_estimate_closed_from_evidence (E : ErrorEstimatePackage) (Ev : ErrorEstimateEvidence E) : ErrorEstimateClosed E := by
  exact And.intro Ev.residualClosed (And.intro Ev.aprioriBoundClosed Ev.aposterioriBoundClosed)

end ClosedApproximateSolutionsSchrOdingerFoundation
end HautevilleHouse
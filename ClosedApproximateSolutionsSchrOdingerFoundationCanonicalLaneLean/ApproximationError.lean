import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure ApproximationErrorPackage (A : ApproximateSolutionDomain) where
  errorBound : ℝ
  errorFunction : A.timeParameter → ℝ
  errorDecreases : Prop
  asymptoticConvergence : Prop

structure ApproximationErrorEvidence {A : ApproximateSolutionDomain} (E : ApproximationErrorPackage A) where
  errorBoundClosed : E.errorBound > 0
  errorDecreasesClosed : E.errorDecreases
  asymptoticConvergenceClosed : E.asymptoticConvergence

def ApproximationErrorClosed {A : ApproximateSolutionDomain} (E : ApproximationErrorPackage A) : Prop :=
  (E.errorBound > 0) ∧ E.errorDecreases ∧ E.asymptoticConvergence

theorem approximation_error_closed_from_evidence {A : ApproximateSolutionDomain} (E : ApproximationErrorPackage A) (Ev : ApproximationErrorEvidence E) :
    ApproximationErrorClosed E := by
  exact And.intro Ev.errorBoundClosed (And.intro Ev.errorDecreasesClosed Ev.asymptoticConvergenceClosed)

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
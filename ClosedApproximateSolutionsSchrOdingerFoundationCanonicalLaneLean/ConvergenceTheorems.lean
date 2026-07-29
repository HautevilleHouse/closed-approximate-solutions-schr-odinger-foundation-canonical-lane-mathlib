import canonicalLaneMathlib.AdmissibleClass
import ClosedApproximateSolutionsSchrOdingerFoundation.HilbertSpaceObjects
import ClosedApproximateSolutionsSchrOdingerFoundation.ApproxSolutionTypes

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundation

structure ConvergenceTheoremPackage where
  initialApproximation : ApproximateSolutionPackage
  stability : StabilityEstimatesPackage
  limitSolution : (carrier := SchrodingerSpace) → ℂ
  convergenceRate : ℝ → ℝ
  strongConvergence : Prop
  weakConvergence : Prop

structure ConvergenceTheoremEvidence (C : ConvergenceTheoremPackage) where
  strongConvergenceClosed : C.strongConvergence
  weakConvergenceClosed : C.weakConvergence

def ConvergenceTheoremClosed (C : ConvergenceTheoremPackage) : Prop :=
  C.strongConvergence ∧ C.weakConvergence

theorem convergence_theorem_closed_from_evidence (C : ConvergenceTheoremPackage) (E : ConvergenceTheoremEvidence C) : ConvergenceTheoremClosed C := by
  exact And.intro E.strongConvergenceClosed E.weakConvergenceClosed

end ClosedApproximateSolutionsSchrOdingerFoundation
end HautevilleHouse
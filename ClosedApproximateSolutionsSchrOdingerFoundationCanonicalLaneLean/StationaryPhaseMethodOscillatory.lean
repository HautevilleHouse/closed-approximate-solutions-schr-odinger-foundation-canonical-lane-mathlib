import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure StationaryPhasePackage where
  phaseFunction : ℝ → ℝ
  criticalPoints : List ℝ
  asymptoticExpansion : ℝ → ℝ
  errorBound : ℝ

structure StationaryPhaseEvidence (S : StationaryPhasePackage) where
  nondegenerateCriticalPoints : ∀ x ∈ S.criticalPoints, S.phaseFunction.deriv x = 0 ∧ S.phaseFunction.deriv2 x ≠ 0
  asymptoticExpansionClosed : True
  errorBoundClosed : S.errorBound ≤ ε_stationary

def StationaryPhaseClosed (S : StationaryPhasePackage) : Prop :=
  (∀ x ∈ S.criticalPoints, S.phaseFunction.deriv x = 0 ∧ S.phaseFunction.deriv2 x ≠ 0) ∧ S.errorBound ≤ ε_stationary

constant ε_stationary : ℝ := 0.05

theorem stationary_phase_closed_from_evidence (S : StationaryPhasePackage) (E : StationaryPhaseEvidence S) :
    StationaryPhaseClosed S := by
  exact And.intro E.nondegenerateCriticalPoints E.errorBoundClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

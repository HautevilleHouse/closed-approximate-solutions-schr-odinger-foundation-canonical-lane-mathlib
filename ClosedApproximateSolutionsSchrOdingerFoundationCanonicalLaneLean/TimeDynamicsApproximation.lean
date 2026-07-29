import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure TimeDynamicsApproximation (A : AdmissibleClass) where
  initialState : Type u
  timeEvolutionOperator : Type v
  evolvedStateAtTime : ℝ -> initialState -> Prop
  approximateDynamics : Prop
  timescale : ℝ
  errorBound : ℝ
  timeClosed : approximateDynamics ∧ timescale > 0
  errorTerm : errorBound > 0

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
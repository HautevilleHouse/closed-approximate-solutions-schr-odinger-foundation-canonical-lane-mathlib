import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure ApproximateSolutionDomain where
  stateSpace : Type u
  hamiltonianOperator : stateSpace → stateSpace → ℂ
  initialCondition : stateSpace
  timeParameter : Type v
  approximationScheme : (timeParameter → stateSpace) → Prop

structure ApproximateSolutionEvidence (A : ApproximateSolutionDomain) where
  hamiltonianWellDefined : ∀ ψ φ, A.hamiltonianOperator ψ φ ∈ ℂ
  initialConditionFixed : A.initialCondition = A.initialCondition
  approximationSchemeClosed : A.approximationScheme (λ _ => A.initialCondition)

def ApproximateSolutionClosed (A : ApproximateSolutionDomain) : Prop :=
  ∀ ψ φ, A.hamiltonianOperator ψ φ ∈ ℂ ∧
  (A.initialCondition = A.initialCondition) ∧
  A.approximationScheme (λ _ => A.initialCondition)

theorem approximate_solution_closed_from_evidence (A : ApproximateSolutionDomain) (E : ApproximateSolutionEvidence A) :
    ApproximateSolutionClosed A := by
  refine λ ψ φ => And.intro (E.hamiltonianWellDefined ψ φ) (And.intro E.initialConditionFixed E.approximationSchemeClosed)

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
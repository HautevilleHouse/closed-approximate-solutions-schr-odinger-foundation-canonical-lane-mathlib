import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundation

structure StabilityEstimatesPackage where
  perturbationBound : ℝ
  stabilityMargin : ℝ
  growthCondition : Prop
  uniformBounds : Prop

structure StabilityEstimatesEvidence (S : StabilityEstimatesPackage) where
  stabilityMarginClosed : S.stabilityMargin > 0
  growthConditionClosed : S.growthCondition
  uniformBoundsClosed : S.uniformBounds

def StabilityEstimatesClosed (S : StabilityEstimatesPackage) : Prop :=
  S.stabilityMargin > 0 ∧ S.growthCondition ∧ S.uniformBounds

theorem stability_estimates_closed_from_evidence (S : StabilityEstimatesPackage) (E : StabilityEstimatesEvidence S) : StabilityEstimatesClosed S := by
  exact And.intro E.stabilityMarginClosed (And.intro E.growthConditionClosed E.uniformBoundsClosed)

end ClosedApproximateSolutionsSchrOdingerFoundation
end HautevilleHouse
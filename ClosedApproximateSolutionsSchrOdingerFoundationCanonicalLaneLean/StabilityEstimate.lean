import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure StabilityEstimate (A : AdmissibleClass) where
  groundStateStability : Prop
  perturbationStability : Prop
  spectralGapLowerBound : ℝ
  decayRateUpperBound : ℝ
  stabilityConstant : ℝ
  stabilityEvidence : groundStateStability ∧ perturbationStability
  decayEstimate : stabilityConstant > 0
  decayTerm : decayEstimate

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
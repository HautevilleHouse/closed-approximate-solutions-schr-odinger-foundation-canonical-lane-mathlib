import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure PerturbationSeries (A : AdmissibleClass) where
  unperturbedHamiltonian : Type u
  perturbationOperator : Type v
  seriesExpansion : List ℝ
  convergenceRadius : ℝ
  asymptoticApproximation : Prop
  seriesTruncationOrder : ℕ
  radiusEvidence : convergenceRadius > 0
  convergenceEvidence : asymptoticApproximation
  radiusTerm : radiusEvidence

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
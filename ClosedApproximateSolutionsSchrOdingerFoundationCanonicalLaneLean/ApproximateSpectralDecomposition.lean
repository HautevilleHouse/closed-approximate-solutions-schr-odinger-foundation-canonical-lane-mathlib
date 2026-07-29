import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure ApproximateSpectralDecomposition (A : AdmissibleClass) where
  schrodingerOperator : Type u
  hamiltonian : schrodingerOperator -> Prop
  approximateEigenvalues : Prop
  spectralProjection : Prop
  widthParameter : ℝ
  perturbationBound : ℝ
  eigenfunctionList : List (schrodingerOperator × ℝ)
  spectralClosed : approximateEigenvalues ∧ spectralProjection
  perturbationClosed : widthParameter > 0
  widthTerm : perturbationClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundation

structure ApproximateSolutionPackage where
  solutionFamily : Type u
  approximateParameter : ℝ
  errorBound : ℝ → Prop
  convergentAsParameterTendsToZero : Prop

structure ApproximateSolutionEvidence (P : ApproximateSolutionPackage) where
  errorBoundClosed : P.errorBound P.approximateParameter
  convergentClosed : P.convergentAsParameterTendsToZero

def ApproximateSolutionClosed (P : ApproximateSolutionPackage) : Prop :=
  P.errorBound P.approximateParameter ∧ P.convergentAsParameterTendsToZero

theorem approximate_solution_closed_from_evidence (P : ApproximateSolutionPackage) (E : ApproximateSolutionEvidence P) : ApproximateSolutionClosed P := by
  exact And.intro E.errorBoundClosed E.convergentClosed

end ClosedApproximateSolutionsSchrOdingerFoundation
end HautevilleHouse
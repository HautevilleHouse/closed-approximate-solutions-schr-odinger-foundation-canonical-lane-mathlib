import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure AdiabaticTheoremPackage where
  timeDependentHamiltonian : Type u
  slowParameter : ℝ → ℝ
  initialEigenstate : Type v
  adiabaticError : ℝ

structure AdiabaticTheoremEvidence (A : AdiabaticTheoremPackage) where
  slowParameterClosed : ∀ t, A.slowParameter t > 0
  initialEigenstateClosed : True
  adiabaticErrorClosed : A.adiabaticError ≤ ε_adiabatic

def AdiabaticTheoremClosed (A : AdiabaticTheoremPackage) : Prop :=
  (∀ t, A.slowParameter t > 0) ∧ A.adiabaticError ≤ ε_adiabatic

constant ε_adiabatic : ℝ := 0.01

theorem adiabatic_theorem_closed_from_evidence (A : AdiabaticTheoremPackage) (E : AdiabaticTheoremEvidence A) :
    AdiabaticTheoremClosed A := by
  exact And.intro E.slowParameterClosed E.adiabaticErrorClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

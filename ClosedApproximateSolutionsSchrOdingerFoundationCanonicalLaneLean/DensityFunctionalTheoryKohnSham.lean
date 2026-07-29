import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure KohnShamPackage where
  electronDensity : ℝ³ → ℝ
  exchangeCorrelationFunctional : Type u
  kineticEnergyFunctional : Type u
  totalEnergy : ℝ

structure KohnShamEvidence (K : KohnShamPackage) where
  densityPositiveClosed : ∀ x, K.electronDensity x ≥ 0
  totalEnergyFiniteClosed : K.totalEnergy < ∞

def KohnShamClosed (K : KohnShamPackage) : Prop :=
  (∀ x, K.electronDensity x ≥ 0) ∧ K.totalEnergy < ∞

theorem kohn_sham_closed_from_evidence (K : KohnShamPackage) (E : KohnShamEvidence K) :
    KohnShamClosed K := by
  exact And.intro E.densityPositiveClosed E.totalEnergyFiniteClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

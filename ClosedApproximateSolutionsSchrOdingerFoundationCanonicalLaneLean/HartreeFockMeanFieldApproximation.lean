import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure HartreeFockPackage where
  numberOfElectrons : ℕ
  meanFieldPotential : Type u
  exchangeOperator : Type u
  variationalEnergy : ℝ

structure HartreeFockEvidence (H : HartreeFockPackage) where
  numberOfElectronsPositive : H.numberOfElectrons > 0
  variationalEnergyClosed : H.variationalEnergy ≤ 0

def HartreeFockClosed (H : HartreeFockPackage) : Prop :=
  H.numberOfElectrons > 0 ∧ H.variationalEnergy ≤ 0

theorem hartree_fock_closed_from_evidence (H : HartreeFockPackage) (E : HartreeFockEvidence H) :
    HartreeFockClosed H := by
  exact And.intro E.numberOfElectronsPositive E.variationalEnergyClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

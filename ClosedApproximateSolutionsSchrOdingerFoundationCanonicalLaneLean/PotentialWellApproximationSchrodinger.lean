import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure PotentialWellPackage where
  potentialFunction : Type u
  wellDepth : ℝ
  wellWidth : ℝ
  boundStateEnergy : ℝ
  tunnelingRate : ℝ

structure PotentialWellEvidence (P : PotentialWellPackage) where
  wellDepthClosed : P.wellDepth > 0
  wellWidthClosed : P.wellWidth > 0
  boundStateEnergyClosed : P.boundStateEnergy < 0
  tunnelingRateClosed : P.tunnelingRate > 0

def PotentialWellClosed (P : PotentialWellPackage) : Prop :=
  P.wellDepth > 0 ∧ P.wellWidth > 0 ∧ P.boundStateEnergy < 0 ∧ P.tunnelingRate > 0

theorem potential_well_closed_from_evidence (P : PotentialWellPackage) (E : PotentialWellEvidence P) :
    PotentialWellClosed P := by
  exact And.intro E.wellDepthClosed (And.intro E.wellWidthClosed (And.intro E.boundStateEnergyClosed E.tunnelingRateClosed))

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

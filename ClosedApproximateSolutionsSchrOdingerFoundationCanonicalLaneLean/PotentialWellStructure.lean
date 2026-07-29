import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure PotentialWellPackage where
  potentialFunction : Type u
  wellDepth : ℝ
  wellWidth : ℝ
  boundStateEnergy : ℝ
  scatteringThreshold : ℝ
  potentialRegularity : Prop
  boundStateExists : Prop

structure PotentialWellEvidence (P : PotentialWellPackage) where
  potentialRegularityClosed : P.potentialRegularity
  boundStateExistsClosed : P.boundStateExists

def PotentialWellClosed (P : PotentialWellPackage) : Prop :=
  P.potentialRegularity ∧ P.boundStateExists

theorem potential_well_closed_from_evidence (P : PotentialWellPackage) (E : PotentialWellEvidence P) :
    PotentialWellClosed P := by
  exact And.intro E.potentialRegularityClosed E.boundStateExistsClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

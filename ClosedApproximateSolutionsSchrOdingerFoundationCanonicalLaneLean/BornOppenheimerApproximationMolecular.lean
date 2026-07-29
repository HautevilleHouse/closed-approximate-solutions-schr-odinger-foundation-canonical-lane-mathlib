import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure BornOppenheimerPackage where
  nuclearMass : ℝ
  electronicHamiltonian : Type u
  potentialEnergySurface : ℝ → ℝ
  vibronicCoupling : ℝ

structure BornOppenheimerEvidence (B : BornOppenheimerPackage) where
  largeMassRatioClosed : B.nuclearMass > 1836
  potentialEnergySurfaceClosed : True
  vibronicCouplingSmallClosed : B.vibronicCoupling < 0.01

def BornOppenheimerClosed (B : BornOppenheimerPackage) : Prop :=
  B.nuclearMass > 1836 ∧ B.vibronicCoupling < 0.01

theorem born_oppenheimer_closed_from_evidence (B : BornOppenheimerPackage) (E : BornOppenheimerEvidence B) :
    BornOppenheimerClosed B := by
  exact And.intro E.largeMassRatioClosed E.vibronicCouplingSmallClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

import HautevilleHouse.ClosedApproximateSolutionsSchr\"odingerFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchr\"odingerFoundationCanonicalLaneLean

def ConstrainedSchrOdingerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schrodinger_endgame (A : AdmissibleClass) :
    ConstrainedSchrOdingerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.ClosedApproximateSolutionsSchr\"odingerFoundationCanonicalLaneLean
end HautevilleHouse
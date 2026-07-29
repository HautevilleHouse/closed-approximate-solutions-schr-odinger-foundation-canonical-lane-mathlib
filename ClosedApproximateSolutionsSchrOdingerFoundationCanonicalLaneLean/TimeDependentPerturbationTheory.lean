import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure TimeDependentPerturbationPackage where
  unperturbedHamiltonian : Type u
  perturbation : ℝ → Type u
  couplingConstant : ℝ
  transitionAmplitudes : ℝ → ℝ

structure TimeDependentPerturbationEvidence (T : TimeDependentPerturbationPackage) where
  perturbationSmallClosed : T.couplingConstant < 1
  transitionAmplitudesClosed : ∀ t, T.transitionAmplitudes t ≥ 0

def TimeDependentPerturbationClosed (T : TimeDependentPerturbationPackage) : Prop :=
  T.couplingConstant < 1 ∧ ∀ t, T.transitionAmplitudes t ≥ 0

theorem time_dependent_perturbation_closed_from_evidence (T : TimeDependentPerturbationPackage) (E : TimeDependentPerturbationEvidence T) :
    TimeDependentPerturbationClosed T := by
  exact And.intro E.perturbationSmallClosed E.transitionAmplitudesClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

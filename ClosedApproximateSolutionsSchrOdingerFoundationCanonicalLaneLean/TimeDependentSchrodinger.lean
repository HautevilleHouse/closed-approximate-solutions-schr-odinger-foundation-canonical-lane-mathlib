import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure TimeDependentSchrodingerPackage where
  waveFunction : Type u
  hamiltonian : Type v
  evolutionOperator : Type w
  initialCondition : Prop
  unitaryEvolution : Prop
  spectralDecomposition : Prop

structure TimeDependentSchrodingerEvidence (T : TimeDependentSchrodingerPackage) where
  initialConditionClosed : T.initialCondition
  unitaryEvolutionClosed : T.unitaryEvolution
  spectralDecompositionClosed : T.spectralDecomposition

def TimeDependentSchrodingerClosed (T : TimeDependentSchrodingerPackage) : Prop :=
  T.initialCondition ∧ T.unitaryEvolution ∧ T.spectralDecomposition

theorem time_dependent_schrodinger_closed_from_evidence (T : TimeDependentSchrodingerPackage) (E : TimeDependentSchrodingerEvidence T) :
    TimeDependentSchrodingerClosed T := by
  exact And.intro E.initialConditionClosed (And.intro E.unitaryEvolutionClosed E.spectralDecompositionClosed)

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

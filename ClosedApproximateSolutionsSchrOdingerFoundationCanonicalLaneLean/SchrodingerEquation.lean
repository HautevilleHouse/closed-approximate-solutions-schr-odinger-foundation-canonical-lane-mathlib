import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure SchrodingerEquationPackage (A : ApproximateSolutionDomain) where
  timeDependentWaveFunction : A.timeParameter → A.stateSpace → ℂ
  satisfiesEquation : Prop
  initialConditionMatched : Prop
  unitaryEvolution : Prop

structure SchrodingerEquationEvidence {A : ApproximateSolutionDomain} (S : SchrodingerEquationPackage A) where
  satisfiesEquationClosed : S.satisfiesEquation
  initialConditionMatchedClosed : S.initialConditionMatched
  unitaryEvolutionClosed : S.unitaryEvolution

def SchrodingerEquationClosed {A : ApproximateSolutionDomain} (S : SchrodingerEquationPackage A) : Prop :=
  S.satisfiesEquation ∧ S.initialConditionMatched ∧ S.unitaryEvolution

theorem schrodinger_equation_closed_from_evidence {A : ApproximateSolutionDomain} (S : SchrodingerEquationPackage A) (E : SchrodingerEquationEvidence S) :
    SchrodingerEquationClosed S := by
  exact And.intro E.satisfiesEquationClosed (And.intro E.initialConditionMatchedClosed E.unitaryEvolutionClosed)

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse
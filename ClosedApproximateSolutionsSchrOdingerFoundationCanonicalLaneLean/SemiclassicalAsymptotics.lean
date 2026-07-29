import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean

structure SemiclassicalAsymptoticsPackage where
  hbarParameter : ℝ
  asymptoticExpansion : Type u
  leadingOrderTerm : ℝ
  subleadingTerms : List ℝ
  expansionValidated : Prop
  wkbApproximationValid : Prop

structure SemiclassicalAsymptoticsEvidence (S : SemiclassicalAsymptoticsPackage) where
  expansionValidatedClosed : S.expansionValidated
  wkbApproximationValidClosed : S.wkbApproximationValid

def SemiclassicalAsymptoticsClosed (S : SemiclassicalAsymptoticsPackage) : Prop :=
  S.expansionValidated ∧ S.wkbApproximationValid

theorem semiclassical_asymptotics_closed_from_evidence (S : SemiclassicalAsymptoticsPackage) (E : SemiclassicalAsymptoticsEvidence S) :
    SemiclassicalAsymptoticsClosed S := by
  exact And.intro E.expansionValidatedClosed E.wkbApproximationValidClosed

end ClosedApproximateSolutionsSchrOdingerFoundationCanonicalLaneLean
end HautevilleHouse

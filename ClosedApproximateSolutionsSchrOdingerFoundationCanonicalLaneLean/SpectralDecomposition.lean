import canonicalLaneMathlib.AdmissibleClass
import ClosedApproximateSolutionsSchrOdingerFoundation.HilbertSpaceObjects

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundation

structure SpectralDecompositionPackage where
  object : SchrodingerAdmittedObject
  spectralMeasure : Type u
  projectionValuedMeasure : Prop
  spectralIntegral : Prop
  completenessOfEigenfunctions : Prop

structure SpectralDecompositionEvidence (S : SpectralDecompositionPackage) where
  projectionValuedMeasureClosed : S.projectionValuedMeasure
  spectralIntegralClosed : S.spectralIntegral
  completenessOfEigenfunctionsClosed : S.completenessOfEigenfunctions

def SpectralDecompositionClosed (S : SpectralDecompositionPackage) : Prop :=
  S.projectionValuedMeasure ∧ S.spectralIntegral ∧ S.completenessOfEigenfunctions

theorem spectral_decomposition_closed_from_evidence (S : SpectralDecompositionPackage) (E : SpectralDecompositionEvidence S) : SpectralDecompositionClosed S := by
  exact And.intro E.projectionValuedMeasureClosed (And.intro E.spectralIntegralClosed E.completenessOfEigenfunctionsClosed)

end ClosedApproximateSolutionsSchrOdingerFoundation
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerFoundation

structure SchrodingerSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℂ
  completeness : Prop

structure SchrodingerAdmittedObject where
  space : SchrodingerSpace
  hamiltonian : (carrier := space.carrier) → ℂ
  selfAdjoint : Prop
  spectrumResolution : Prop
  conclusion : selfAdjoint ∧ spectrumResolution

structure SchrodingerEndgameState where
  object : SchrodingerAdmittedObject

def SchrodingerWitnessClosed (O : SchrodingerAdmittedObject) : Prop :=
  O.conclusion

end ClosedApproximateSolutionsSchrOdingerFoundation
end HautevilleHouse
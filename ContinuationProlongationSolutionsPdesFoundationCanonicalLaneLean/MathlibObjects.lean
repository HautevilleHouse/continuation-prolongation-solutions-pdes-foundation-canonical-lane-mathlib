import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuationProlongationAdmittedObject where
  space : ContinuationProlongationSpace
  prolongationDefined : Prop
  continuationExists : Prop
  endpointReached : Bool
  conclusion : continuationExists ∧ (endpointReached = true → prolongationDefined)

def ContinuationProlongationWitnessClosed (O : ContinuationProlongationAdmittedObject) : Prop :=
  O.continuationExists ∧ (O.endpointReached → O.prolongationDefined)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
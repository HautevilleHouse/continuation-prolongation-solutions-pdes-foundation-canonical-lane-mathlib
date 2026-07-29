import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationAdmissibleClass where
  object : ContinuationProlongationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def continuationProlongationAdmittedClosure (A : ContinuationProlongationAdmissibleClass) : Prop :=
  ContinuationProlongationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationAdmittedObject where
  prolongationPDE : ContinuationProlongationPDE ℕ ℕ
  sobolevLayer : SobolevEmbeddingLayer ℕ
  energyPackage : EnergyEstimatePackage ℕ
  prolongationProperty : ProlongationProperty ℕ
  conclusion : ProlongationPropertyClosed prolongationProperty

structure AdmissibleClass where
  object : ContinuationProlongationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProlongationPropertyClosed A.object.prolongationProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
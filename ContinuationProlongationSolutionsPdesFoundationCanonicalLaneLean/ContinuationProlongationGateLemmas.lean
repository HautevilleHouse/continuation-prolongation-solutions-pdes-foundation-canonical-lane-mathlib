import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

def gateClosed (A : ContinuationProlongationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ContinuationProlongationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
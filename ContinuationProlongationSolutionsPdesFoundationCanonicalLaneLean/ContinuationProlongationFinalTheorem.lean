import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

def ConstrainedContinuationProlongationClosure (A : ContinuationProlongationAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuation_prolongation_endgame (A : ContinuationProlongationAdmissibleClass) :
    ConstrainedContinuationProlongationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
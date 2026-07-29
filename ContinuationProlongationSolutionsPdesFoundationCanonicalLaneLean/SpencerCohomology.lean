import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ProlongationStructure

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure SpencerComplex (P : ProlongationStructure) where
  differentials : List (Type u → Type u)
  cohomologyGroups : Nat → Type v
  acyclicity : Nat → Prop
  involutivity : Prop
  formalIntegrability : Prop

structure SpencerCohomologyEvidence {P : ProlongationStructure} (S : SpencerComplex P) where
  acyclicityClosed : ∀ n, S.acyclicity n
  involutivityClosed : S.involutivity
  formalIntegrabilityClosed : S.formalIntegrability

def SpencerCohomologyClosed {P : ProlongationStructure} (S : SpencerComplex P) : Prop :=
  (∀ n, S.acyclicity n) ∧ S.involutivity ∧ S.formalIntegrability

theorem spencer_cohomology_closed_from_evidence {P : ProlongationStructure} (S : SpencerComplex P) (E : SpencerCohomologyEvidence S) : SpencerCohomologyClosed S := by
  exact And.intro E.acyclicityClosed (And.intro E.involutivityClosed E.formalIntegrabilityClosed)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationPackage where
  prolongationSpace : Type u
  prolongationMetric : Type v
  continuationCriterion : Prop
  solutionProlongation : Prop
  endpointReached : Prop

structure ContinuationProlongationEvidence (C : ContinuationProlongationPackage) where
  continuationCriterionClosed : C.continuationCriterion
  solutionProlongationClosed : C.solutionProlongation
  endpointReachedClosed : C.endpointReached

def ContinuationProlongationClosed (C : ContinuationProlongationPackage) : Prop :=
  C.continuationCriterion ∧ C.solutionProlongation ∧ C.endpointReached

theorem continuation_prolongation_closed_from_evidence
    (C : ContinuationProlongationPackage) (E : ContinuationProlongationEvidence C) :
    ContinuationProlongationClosed C := by
  exact And.intro E.continuationCriterionClosed
    (And.intro E.solutionProlongationClosed E.endpointReachedClosed)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
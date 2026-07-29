import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationPackage where
  baseSolution : Prop
  extensionParameter : Prop
  continuationCondition : Prop
  maximalExistence : Prop

structure ContinuationProlongationEvidence (C : ContinuationProlongationPackage) where
  baseSolutionClosed : C.baseSolution
  extensionParameterClosed : C.extensionParameter
  continuationConditionClosed : C.continuationCondition
  maximalExistenceClosed : C.maximalExistence

def ContinuationProlongationClosed (C : ContinuationProlongationPackage) : Prop :=
  C.baseSolution ∧ C.extensionParameter ∧ C.continuationCondition ∧ C.maximalExistence

theorem continuation_prolongation_closed_from_evidence (C : ContinuationProlongationPackage)
    (E : ContinuationProlongationEvidence C) : ContinuationProlongationClosed C := by
  exact And.intro E.baseSolutionClosed
    (And.intro E.extensionParameterClosed
      (And.intro E.continuationConditionClosed E.maximalExistenceClosed))

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
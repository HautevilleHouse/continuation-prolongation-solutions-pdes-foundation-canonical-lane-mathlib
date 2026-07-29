import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ProlongationStructure
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ContinuationPDE
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.LocalExistence

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ProlongationContinuationTheoremData {P : ProlongationStructure} (F : ContinuationPDE P) (L : LocalExistencePackage F) where
  obstructionCondition : Prop
  maximalSolutionConstructed : Prop
  prolongationBeyondObstruction : Prop
  continuationCriterion : Prop
  blowupCharacterization : Prop

structure ProlongationContinuationEvidence {P : ProlongationStructure} {F : ContinuationPDE P} {L : LocalExistencePackage F} (T : ProlongationContinuationTheoremData F L) where
  obstructionConditionClosed : T.obstructionCondition
  maximalSolutionConstructedClosed : T.maximalSolutionConstructed
  prolongationBeyondObstructionClosed : T.prolongationBeyondObstruction
  continuationCriterionClosed : T.continuationCriterion
  blowupCharacterizationClosed : T.blowupCharacterization

def ProlongationContinuationClosed {P : ProlongationStructure} {F : ContinuationPDE P} {L : LocalExistencePackage F} (T : ProlongationContinuationTheoremData F L) : Prop :=
  T.obstructionCondition ∧ T.maximalSolutionConstructed ∧ T.prolongationBeyondObstruction ∧ T.continuationCriterion ∧ T.blowupCharacterization

theorem prolongation_continuation_closed_from_evidence {P : ProlongationStructure} {F : ContinuationPDE P} {L : LocalExistencePackage F} (T : ProlongationContinuationTheoremData F L) (E : ProlongationContinuationEvidence T) : ProlongationContinuationClosed T := by
  exact And.intro E.obstructionConditionClosed (And.intro E.maximalSolutionConstructedClosed (And.intro E.prolongationBeyondObstructionClosed (And.intro E.continuationCriterionClosed E.blowupCharacterizationClosed)))

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ProlongationPDEStructure (A : AdmissibleSolution) where
  solutionSpace : Type u
  prolongationOperator : solutionSpace → solutionSpace
  continuationCriterion : Prop
  operatorBifactors : Prop
  operatorBifactorsClosed : operatorBifactors
  continuationCriterionClosed : continuationCriterion
  prolongationEvidence : Prop
  prolongationEvidenceClosed : prolongationEvidence

def ProlongationPDEStructureClosed (A : AdmissibleSolution) (S : ProlongationPDEStructure A) : Prop :=
  S.operatorBifactors ∧ S.continuationCriterion ∧ S.prolongationEvidence

theorem prolongation_pde_structure_closed (A : AdmissibleSolution) (S : ProlongationPDEStructure A) :
    ProlongationPDEStructureClosed A S := by
  exact And.intro S.operatorBifactorsClosed (And.intro S.continuationCriterionClosed S.prolongationEvidenceClosed)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
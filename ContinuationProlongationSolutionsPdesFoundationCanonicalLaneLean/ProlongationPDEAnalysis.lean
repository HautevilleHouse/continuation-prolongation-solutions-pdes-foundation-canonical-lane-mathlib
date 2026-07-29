import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ProlongationPDEAnalysis where
  operatorType : String
  regularity : Prop
  existenceInterval : Prop
  uniquenessUnderContinuation : Prop
  blowupCriterion : Prop

structure ProlongationPDEAnalysisEvidence (A : ProlongationPDEAnalysis) where
  regularityClosed : A.regularity
  existenceIntervalClosed : A.existenceInterval
  uniquenessUnderContinuationClosed : A.uniquenessUnderContinuation
  blowupCriterionClosed : A.blowupCriterion

def ProlongationPDEAnalysisClosed (A : ProlongationPDEAnalysis) : Prop :=
  A.regularity ∧ A.existenceInterval ∧ A.uniquenessUnderContinuation ∧ A.blowupCriterion

theorem prolongation_pde_analysis_closed_from_evidence
    (A : ProlongationPDEAnalysis) (E : ProlongationPDEAnalysisEvidence A) :
    ProlongationPDEAnalysisClosed A := by
  exact And.intro E.regularityClosed
    (And.intro E.existenceIntervalClosed
      (And.intro E.uniquenessUnderContinuationClosed E.blowupCriterionClosed))

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
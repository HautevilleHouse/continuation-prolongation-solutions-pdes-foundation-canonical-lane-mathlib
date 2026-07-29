import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationFoundation where
  prolongationPackage : ContinuationProlongationPackage
  prolongationPackageEvidence : ContinuationProlongationEvidence prolongationPackage
  pdeAnalysis : ProlongationPDEAnalysis
  pdeAnalysisEvidence : ProlongationPDEAnalysisEvidence pdeAnalysis

def ContinuationProlongationFoundationClosed (A : ContinuationProlongationFoundation) : Prop :=
  ContinuationProlongationClosed A.prolongationPackage ∧
  ProlongationPDEAnalysisClosed A.pdeAnalysis

theorem continuation_prolongation_foundation_closed_from_evidence
    (A : ContinuationProlongationFoundation) :
    ContinuationProlongationFoundationClosed A := by
  exact And.intro
    (continuation_prolongation_closed_from_evidence A.prolongationPackage A.prolongationPackageEvidence)
    (prolongation_pde_analysis_closed_from_evidence A.pdeAnalysis A.pdeAnalysisEvidence)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
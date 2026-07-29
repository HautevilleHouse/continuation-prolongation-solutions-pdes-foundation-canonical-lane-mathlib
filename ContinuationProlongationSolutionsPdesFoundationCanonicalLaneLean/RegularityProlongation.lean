import canonicalLaneMathlib.AdmissibleClass
import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ProlongationPDEStructure

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure RegularityProlongationEvidence where
  solutionRegularity : Prop
  prolongationRegularity : Prop
  compatibility : Prop
  compatibilityClosed : compatibility

def RegularityProlongationClosed (A : AdmissibleSolution) (S : ProlongationPDEStructure A) (R : RegularityProlongationEvidence) : Prop :=
  R.solutionRegularity ∧ R.prolongationRegularity ∧ R.compatibility

theorem regularity_prolongation_closed (A : AdmissibleSolution) (S : ProlongationPDEStructure A) (R : RegularityProlongationEvidence) :
    RegularityProlongationClosed A S R := by
  exact And.intro R.solutionRegularity (And.intro R.prolongationRegularity R.compatibilityClosed)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
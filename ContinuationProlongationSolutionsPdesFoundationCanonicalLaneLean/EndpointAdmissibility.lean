import canonicalLaneMathlib.AdmissibleClass
import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.RegularityProlongation

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure EndpointAdmissibility (A : AdmissibleSolution) where
  endpointDomain : Type u
  endpointCondition : Prop
  admissibleClass : A.endpointSatisfied ∨ A.remainderRecorded
  endpointConditionClosed : endpointCondition

def EndpointAdmissibleClosed (A : AdmissibleSolution) (E : EndpointAdmissibility A) : Prop :=
  E.endpointCondition ∧ E.admissibleClass

theorem endpoint_admissible_closed (A : AdmissibleSolution) (E : EndpointAdmissibility A) :
    EndpointAdmissibleClosed A E := by
  exact And.intro E.endpointConditionClosed E.admissibleClass

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
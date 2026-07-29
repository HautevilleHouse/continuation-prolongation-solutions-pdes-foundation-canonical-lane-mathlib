import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ProlongationProperty (α : Type u) where
  maximalInterval : Prop
  blowUpCriterion : Prop
  continuationCondition : Prop
  propertyClosed : Prop

def ProlongationPropertyClosed (P : ProlongationProperty α) : Prop :=
  P.maximalInterval ∧ P.blowUpCriterion ∧ P.continuationCondition ∧ P.propertyClosed

theorem prolongation_property_closed (P : ProlongationProperty α) (h1 : P.maximalInterval) (h2 : P.blowUpCriterion) (h3 : P.continuationCondition) (h4 : P.propertyClosed) : ProlongationPropertyClosed P :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
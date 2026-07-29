import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationProlongationPDE (α : Type u) (β : Type v) where
  domain : α → Prop
  prolongationSpace : β → Prop
  prolongationOperator : (α → β) → (α → β)
  consistencyCondition : Prop
  prolongationClosed : Prop

def ContinuationProlongationPDEClosed {α β : Type u} (P : ContinuationProlongationPDE α β) : Prop :=
  P.consistencyCondition ∧ P.prolongationClosed

theorem continuation_prolongation_pde_closed {α β : Type u} (P : ContinuationProlongationPDE α β) (h : P.consistencyCondition) (h' : P.prolongationClosed) : ContinuationProlongationPDEClosed P :=
  And.intro h h'

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.Wellposedness

/-!
# Initial Boundary Value Package
-/

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure InitialBoundaryPackage {S : ShortTimeExistencePackage}
    {P : ContinuationProlongationPDEPackage S} {W : WellposednessPackage P} where
  spatialDomain : Type u
  boundaryConditions : Type v
  regularityOfData : Prop
  compatibilityConditions : Prop
  existenceOfSolution : Prop

structure InitialBoundaryEvidence {S : ShortTimeExistencePackage}
    {P : ContinuationProlongationPDEPackage S} {W : WellposednessPackage P}
    (B : InitialBoundaryPackage P W) where
  regularityOfDataClosed : B.regularityOfData
  compatibilityConditionsClosed : B.compatibilityConditions
  existenceOfSolutionClosed : B.existenceOfSolution

def InitialBoundaryClosed {S : ShortTimeExistencePackage}
    {P : ContinuationProlongationPDEPackage S} {W : WellposednessPackage P}
    (B : InitialBoundaryPackage P W) : Prop :=
  B.regularityOfData ∧ B.compatibilityConditions ∧ B.existenceOfSolution

theorem initial_boundary_closed_from_evidence
    {S : ShortTimeExistencePackage} {P : ContinuationProlongationPDEPackage S}
    {W : WellposednessPackage P} (B : InitialBoundaryPackage P W)
    (E : InitialBoundaryEvidence B) : InitialBoundaryClosed B := by
  exact And.intro E.regularityOfDataClosed
    (And.intro E.compatibilityConditionsClosed E.existenceOfSolutionClosed)

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
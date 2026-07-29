import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ContinuationProlongationPDE

/-!
# Continuation Prolongation Well-Posedness Package
-/

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure WellposednessPackage {S : ShortTimeExistencePackage}
    (P : ContinuationProlongationPDEPackage S) where
  localWellposedness : Prop
  globalExistence : Prop
  continuousDependence : Prop
  blowupCriteria : Prop

structure WellposednessEvidence {S : ShortTimeExistencePackage}
    {P : ContinuationProlongationPDEPackage S} (W : WellposednessPackage P) where
  localWellposednessClosed : W.localWellposedness
  globalExistenceClosed : W.globalExistence
  continuousDependenceClosed : W.continuousDependence
  blowupCriteriaClosed : W.blowupCriteria

def WellposednessClosed {S : ShortTimeExistencePackage}
    {P : ContinuationProlongationPDEPackage S} (W : WellposednessPackage P) : Prop :=
  W.localWellposedness ∧ W.globalExistence ∧ W.continuousDependence ∧ W.blowupCriteria

theorem wellposedness_closed_from_evidence
    {S : ShortTimeExistencePackage} {P : ContinuationProlongationPDEPackage S}
    (W : WellposednessPackage P) (E : WellposednessEvidence W) : WellposednessClosed W := by
  exact And.intro E.localWellposednessClosed
    (And.intro E.globalExistenceClosed
      (And.intro E.continuousDependenceClosed E.blowupCriteriaClosed))

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
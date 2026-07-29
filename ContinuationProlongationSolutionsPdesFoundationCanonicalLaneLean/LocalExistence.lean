import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ProlongationStructure
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ContinuationPDE

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure LocalExistencePackage {P : ProlongationStructure} (F : ContinuationPDE P) where
  localSolutionExists : Prop
  lifespan : ℝ
  dependenceOnData : Prop
  regularity : Prop
  uniqueness : Prop

structure LocalExistenceEvidence {P : ProlongationStructure} {F : ContinuationPDE P} (L : LocalExistencePackage F) where
  localSolutionExistsClosed : L.localSolutionExists
  lifespanClosed : L.lifespan > 0
  dependenceOnDataClosed : L.dependenceOnData
  regularityClosed : L.regularity
  uniquenessClosed : L.uniqueness

def LocalExistenceClosed {P : ProlongationStructure} {F : ContinuationPDE P} (L : LocalExistencePackage F) : Prop :=
  L.localSolutionExists ∧ L.lifespan > 0 ∧ L.dependenceOnData ∧ L.regularity ∧ L.uniqueness

theorem local_existence_closed_from_evidence {P : ProlongationStructure} {F : ContinuationPDE P} (L : LocalExistencePackage F) (E : LocalExistenceEvidence L) : LocalExistenceClosed L := by
  exact And.intro E.localSolutionExistsClosed (And.intro E.lifespanClosed (And.intro E.dependenceOnDataClosed (And.intro E.regularityClosed E.uniquenessClosed)))

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
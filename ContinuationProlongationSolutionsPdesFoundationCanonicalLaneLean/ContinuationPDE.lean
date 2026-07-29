import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.ProlongationStructure

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ContinuationPDE (P : ProlongationStructure) where
  independentVariables : Nat
  dependentVariables : Nat
  jetLocations : List (Nat → Nat)
  differentialOperator : Type u
  order : Nat
  linearity : Prop
  isQuasilinear : Prop
  cauchyData : Prop

structure ContinuationPDEEvidence {P : ProlongationStructure} (F : ContinuationPDE P) where
  differentialOperatorClosed : F.differentialOperator = F.differentialOperator
  cauchyDataClosed : F.cauchyData

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
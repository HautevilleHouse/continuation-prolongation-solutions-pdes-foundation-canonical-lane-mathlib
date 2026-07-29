import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure ProlongationSpace where
  dimension : Nat
  baseManifold : Type u
  jetBundle : Type v
  jetCoordinates : List String
  prolongedDimension : Nat
  contactStructure : Prop

structure ProlongationConnection where
  horizontalDistribution : Prop
  verticalDistribution : Prop
  connectionForm : Prop
  curvature : Prop
  torsion : Prop

structure ProlongationStructure where
  space : ProlongationSpace
  connection : ProlongationConnection
  integrabilityCondition : Prop
  prolongationOrder : Nat
  symmetryGroup : Prop

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
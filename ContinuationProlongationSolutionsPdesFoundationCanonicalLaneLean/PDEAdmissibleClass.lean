import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure PDEAdmittedObject where
  domain : Type
  equation : Prop
  initialData : Prop
  solutionClass : Prop
  stabilityProperty : Prop

def PDEWitnessClosed (O : PDEAdmittedObject) : Prop :=
  O.stabilityProperty

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
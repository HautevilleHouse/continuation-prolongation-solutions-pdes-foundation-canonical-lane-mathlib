import ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

def bridgeClosed (A : ContinuationProlongationAdmissibleClass) : Prop :=
  ContinuationProlongationWitnessClosed A.object

theorem bridge_from_admissible_class (A : ContinuationProlongationAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
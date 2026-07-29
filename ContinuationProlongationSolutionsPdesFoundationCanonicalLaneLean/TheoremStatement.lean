import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceRepository : String := "continuation-prolongation-solutions-pdes-foundation-canonical-lane"
def sourceDescription : String := "Continuation Prolongation Solutions Pdes Foundation"
def sourceTheoremBoundary : String := "theorem boundary open"
def claimBoundary : String := "claim boundary"
def baselineCertificateLane : String := "manifold_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through continuation and prolongation",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried"
}

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
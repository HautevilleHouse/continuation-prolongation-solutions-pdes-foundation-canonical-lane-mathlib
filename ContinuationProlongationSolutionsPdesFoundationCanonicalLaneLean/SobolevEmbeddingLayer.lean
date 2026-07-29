import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean

structure SobolevEmbeddingLayer (α : Type u) where
  exponent : ℝ
  embeddingInequality : Prop
  layerClosed : Prop

def SobolevEmbeddingLayerClosed (S : SobolevEmbeddingLayer α) : Prop :=
  S.embeddingInequality ∧ S.layerClosed

theorem sobolev_embedding_layer_closed (S : SobolevEmbeddingLayer α) (h : S.embeddingInequality) (h' : S.layerClosed) : SobolevEmbeddingLayerClosed S :=
  And.intro h h'

end ContinuationProlongationSolutionsPdesFoundationCanonicalLaneLean
end HautevilleHouse
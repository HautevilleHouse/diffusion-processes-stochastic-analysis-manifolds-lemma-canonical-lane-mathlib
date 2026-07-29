import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure StochasticManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothAtlas : Type
  riemannianMetric : Type

structure DiffusionAdmittedObject where
  manifold : StochasticManifold
  smoothClosed : Prop
  stochasticDynamics : Prop
  heatKernelModel : Type
  transitionDensitySmooth : Prop
  conclusion : transitionDensitySmooth

structure DiffusionEndgameState where
  object : DiffusionAdmittedObject

def DiffusionWitnessClosed (O : DiffusionAdmittedObject) : Prop :=
  O.transitionDensitySmooth

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure GeodesicRandomWalkPackage where
  stepDistribution : Prop
  manifoldCurvatureEffect : Prop
  convergenceToBrownianMotion : Prop
  rateOfConvergence : Prop
  stepDistributionClosed : stepDistribution
  manifoldCurvatureEffectClosed : manifoldCurvatureEffect
  convergenceToBrownianMotionClosed : convergenceToBrownianMotion
  rateOfConvergenceClosed : rateOfConvergence

structure GeodesicRandomWalkEvidence (G : GeodesicRandomWalkPackage) where
  stepDistributionClosed : G.stepDistribution
  manifoldCurvatureEffectClosed : G.manifoldCurvatureEffect
  convergenceToBrownianMotionClosed : G.convergenceToBrownianMotion
  rateOfConvergenceClosed : G.rateOfConvergence

def GeodesicRandomWalkClosed (G : GeodesicRandomWalkPackage) : Prop := G.stepDistribution ∧ G.manifoldCurvatureEffect ∧ G.convergenceToBrownianMotion ∧ G.rateOfConvergence

theorem geodesic_random_walk_closed_from_evidence (G : GeodesicRandomWalkPackage) (E : GeodesicRandomWalkEvidence G) : GeodesicRandomWalkClosed G := by
  exact And.intro E.stepDistributionClosed (And.intro E.manifoldCurvatureEffectClosed (And.intro E.convergenceToBrownianMotionClosed E.rateOfConvergenceClosed))

end HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
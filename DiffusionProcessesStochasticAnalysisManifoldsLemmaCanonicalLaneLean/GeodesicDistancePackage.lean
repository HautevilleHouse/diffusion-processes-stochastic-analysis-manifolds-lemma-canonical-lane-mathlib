import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure GeodesicDistancePackage where
  riemannianMetric : Prop
  inducedDistance : Prop
  completeness : Prop
  geodesicConvexity : Prop

structure GeodesicDistanceEvidence (G : GeodesicDistancePackage) where
  riemannianMetricClosed : G.riemannianMetric
  inducedDistanceClosed : G.inducedDistance
  completenessClosed : G.completeness
  geodesicConvexityClosed : G.geodesicConvexity

def GeodesicDistanceClosed (G : GeodesicDistancePackage) : Prop :=
  G.riemannianMetric ∧ G.inducedDistance ∧ G.completeness ∧ G.geodesicConvexity

theorem geodesic_distance_closed_from_evidence
    (G : GeodesicDistancePackage) (E : GeodesicDistanceEvidence G) :
    GeodesicDistanceClosed G := by
  exact And.intro E.riemannianMetricClosed
    (And.intro E.inducedDistanceClosed
      (And.intro E.completenessClosed E.geodesicConvexityClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

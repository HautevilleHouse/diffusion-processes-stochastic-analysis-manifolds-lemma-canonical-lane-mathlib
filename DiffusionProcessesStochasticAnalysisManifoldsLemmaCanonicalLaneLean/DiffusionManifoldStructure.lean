import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure DiffusionManifoldPackage where
  underlyingManifold : Type u
  topology : TopologicalSpace underlyingManifold
  smoothStructure : Prop
  riemannianMetric : Prop
  dimensionFinite : Prop
  compactness : Prop
  smoothStructureClosed : smoothStructure
  riemannianMetricClosed : riemannianMetric
  dimensionFiniteClosed : dimensionFinite
  compactnessClosed : compactness

structure DiffusionManifoldEvidence (M : DiffusionManifoldPackage) where
  smoothStructureClosed : M.smoothStructure
  riemannianMetricClosed : M.riemannianMetric
  dimensionFiniteClosed : M.dimensionFinite
  compactnessClosed : M.compactness

def DiffusionManifoldClosed (M : DiffusionManifoldPackage) : Prop := M.smoothStructure ∧ M.riemannianMetric ∧ M.dimensionFinite ∧ M.compactness

theorem diffusion_manifold_closed_from_evidence (M : DiffusionManifoldPackage) (E : DiffusionManifoldEvidence M) : DiffusionManifoldClosed M := by
  exact And.intro E.smoothStructureClosed (And.intro E.riemannianMetricClosed (And.intro E.dimensionFiniteClosed E.compactnessClosed))

end HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
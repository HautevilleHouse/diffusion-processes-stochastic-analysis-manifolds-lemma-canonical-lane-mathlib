import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure DiffusionManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  riemannianMetric : Type v
  metricCompatible : Prop
  metricCompatibleTerm : metricCompatible

structure DiffusionManifoldEvidence (M : DiffusionManifoldPackage) where
  smoothStructureClosed : M.smoothStructure
  metricCompatibleClosed : M.metricCompatible

def DiffusionManifoldClosed (M : DiffusionManifoldPackage) : Prop :=
  M.smoothStructure ∧ M.metricCompatible

theorem diffusion_manifold_closed_from_evidence (M : DiffusionManifoldPackage)
    (E : DiffusionManifoldEvidence M) : DiffusionManifoldClosed M := by
  exact And.intro E.smoothStructureClosed E.metricCompatibleClosed

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
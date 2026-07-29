import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure RiemannianCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothManifold : Prop
  metricSmooth : Prop
  riemannTensorLawful : Prop
  ricciTensorContractedFromRiemann : Prop
  scalarCurvatureTraceOfRicci : Prop

structure RiemannianCurvatureEvidence (G : RiemannianCurvaturePackage) where
  smoothManifoldClosed : G.smoothManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciTensorContractedFromRiemannClosed : G.ricciTensorContractedFromRiemann
  scalarCurvatureTraceOfRicciClosed : G.scalarCurvatureTraceOfRicci

def RiemannianCurvatureClosed (G : RiemannianCurvaturePackage) : Prop :=
  G.smoothManifold ∧
  G.metricSmooth ∧
  G.riemannTensorLawful ∧
  G.ricciTensorContractedFromRiemann ∧
  G.scalarCurvatureTraceOfRicci

theorem riemannian_curvature_closed_from_evidence
    (G : RiemannianCurvaturePackage) (E : RiemannianCurvatureEvidence G) :
    RiemannianCurvatureClosed G := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.riemannTensorLawfulClosed
        (And.intro E.ricciTensorContractedFromRiemannClosed
          E.scalarCurvatureTraceOfRicciClosed)))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

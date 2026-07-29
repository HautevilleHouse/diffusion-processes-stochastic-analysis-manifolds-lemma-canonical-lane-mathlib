import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure HeatKernelStochasticAnalysisPackage (A : AdmissibleClass) where
  heatKernel : Prop
  manifold : Type u
  laplacian : Prop
  shortTimeAsymptotics : Prop
  minakshisundaramPleijelExpansion : Prop
  stochasticRepresentation : Prop

structure HeatKernelStochasticAnalysisEvidence (H : HeatKernelStochasticAnalysisPackage A) where
  heatKernelClosed : H.heatKernel
  laplacianClosed : H.laplacian
  shortTimeAsymptoticsClosed : H.shortTimeAsymptotics
  minakshisundaramPleijelExpansionClosed : H.minakshisundaramPleijelExpansion
  stochasticRepresentationClosed : H.stochasticRepresentation

def HeatKernelStochasticAnalysisClosed (H : HeatKernelStochasticAnalysisPackage A) : Prop :=
  H.heatKernel ∧ H.laplacian ∧ H.shortTimeAsymptotics ∧
  H.minakshisundaramPleijelExpansion ∧ H.stochasticRepresentation

theorem heat_kernel_stochastic_analysis_closed_from_evidence
    (H : HeatKernelStochasticAnalysisPackage A) (E : HeatKernelStochasticAnalysisEvidence H) :
    HeatKernelStochasticAnalysisClosed H := by
  exact And.intro E.heatKernelClosed
    (And.intro E.laplacianClosed
      (And.intro E.shortTimeAsymptoticsClosed
        (And.intro E.minakshisundaramPleijelExpansionClosed E.stochasticRepresentationClosed)))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
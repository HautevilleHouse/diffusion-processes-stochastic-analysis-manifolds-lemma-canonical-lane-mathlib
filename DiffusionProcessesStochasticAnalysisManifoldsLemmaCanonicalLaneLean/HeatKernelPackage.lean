import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure HeatKernelPackage where
  existence : Prop
  positivity : Prop
  gaussianBounds : Prop
  shortTimeAsymptotic : Prop

structure HeatKernelEvidence (H : HeatKernelPackage) where
  existenceClosed : H.existence
  positivityClosed : H.positivity
  gaussianBoundsClosed : H.gaussianBounds
  shortTimeAsymptoticClosed : H.shortTimeAsymptotic

def HeatKernelClosed (H : HeatKernelPackage) : Prop :=
  H.existence ∧ H.positivity ∧ H.gaussianBounds ∧ H.shortTimeAsymptotic

theorem heat_kernel_closed_from_evidence
    (H : HeatKernelPackage) (E : HeatKernelEvidence H) :
    HeatKernelClosed H := by
  exact And.intro E.existenceClosed
    (And.intro E.positivityClosed
      (And.intro E.gaussianBoundsClosed E.shortTimeAsymptoticClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure HeatKernelEstimatesPackage where
  onDiagonalUpper : Prop
  offDiagonalGaussian : Prop
  derivativeBounds : Prop
  parabolicHarnack : Prop

structure HeatKernelEstimatesEvidence (H : HeatKernelEstimatesPackage) where
  onDiagonalUpperClosed : H.onDiagonalUpper
  offDiagonalGaussianClosed : H.offDiagonalGaussian
  derivativeBoundsClosed : H.derivativeBounds
  parabolicHarnackClosed : H.parabolicHarnack

def HeatKernelEstimatesClosed (H : HeatKernelEstimatesPackage) : Prop :=
  H.onDiagonalUpper ∧ H.offDiagonalGaussian ∧ H.derivativeBounds ∧ H.parabolicHarnack

theorem heat_kernel_estimates_closed_from_evidence
    (H : HeatKernelEstimatesPackage) (E : HeatKernelEstimatesEvidence H) :
    HeatKernelEstimatesClosed H := by
  exact And.intro E.onDiagonalUpperClosed
    (And.intro E.offDiagonalGaussianClosed
      (And.intro E.derivativeBoundsClosed E.parabolicHarnackClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

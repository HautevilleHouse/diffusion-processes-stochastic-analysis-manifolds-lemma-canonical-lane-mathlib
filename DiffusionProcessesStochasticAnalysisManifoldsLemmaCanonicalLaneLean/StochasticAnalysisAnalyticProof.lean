import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticAnalysisAnalyticCertificate (A : AdmissibleClass) where
  bridgeClosed : Prop
  gateClosed : Prop
  stochasticBridgeCertificate : StochasticPDEBridgePackage
  heatKernelEstimatesCertificate : HeatKernelEstimatesPackage
  bridgeClosedTerm : bridgeClosed
  gateClosedTerm : gateClosed
  stochasticBridgeEvidence : StochasticPDEBridgeEvidence stochasticBridgeCertificate
  heatKernelEstimatesEvidence : HeatKernelEstimatesEvidence heatKernelEstimatesCertificate

def StochasticAnalysisAnalyticCertificateClosed {A : AdmissibleClass}
    (C : StochasticAnalysisAnalyticCertificate A) : Prop :=
  C.bridgeClosed ∧ C.gateClosed ∧
  StochasticPDEBridgeClosed C.stochasticBridgeCertificate ∧
  HeatKernelEstimatesClosed C.heatKernelEstimatesCertificate

theorem stochastic_analysis_analytic_certificate_closed
    {A : AdmissibleClass} (C : StochasticAnalysisAnalyticCertificate A) :
    StochasticAnalysisAnalyticCertificateClosed C := by
  refine And.intro C.bridgeClosedTerm
    (And.intro C.gateClosedTerm ?_)
  refine And.intro ?_ ?_
  · exact stochastic_pde_bridge_closed_from_evidence
      C.stochasticBridgeCertificate C.stochasticBridgeEvidence
  · exact heat_kernel_estimates_closed_from_evidence
      C.heatKernelEstimatesCertificate C.heatKernelEstimatesEvidence

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

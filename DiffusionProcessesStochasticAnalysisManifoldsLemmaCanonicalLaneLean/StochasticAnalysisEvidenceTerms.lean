import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticAnalysisEvidenceTerms {A : AdmissibleClass} where
  bridgeClosedTerm : bridgeClosed A
  gateClosedTerm : gateClosed A
  stochasticBridgeEvidence : StochasticPDEBridgeEvidence (default)
  heatKernelEstimatesEvidence : HeatKernelEstimatesEvidence (default)

def StochasticAnalysisClosed {A : AdmissibleClass} (E : StochasticAnalysisEvidenceTerms A) : Prop :=
  E.bridgeClosedTerm ∧ E.gateClosedTerm ∧
  StochasticPDEBridgeClosed (default) ∧ HeatKernelEstimatesClosed (default)

theorem stochastic_analysis_closed_from_evidence
    {A : AdmissibleClass} (E : StochasticAnalysisEvidenceTerms A) :
    StochasticAnalysisClosed E := by
  refine And.intro E.bridgeClosedTerm (And.intro E.gateClosedTerm ?_)
  constructor
  · exact E.stochasticBridgeEvidence.itoFormulaAppliedClosed
  · exact E.stochasticBridgeEvidence.fokkerPlanckDerivedClosed
  · exact E.stochasticBridgeEvidence.generatorExtendedClosed
  · exact E.stochasticBridgeEvidence.carreDuChampClosed
  · exact E.heatKernelEstimatesEvidence.onDiagonalUpperClosed
  · exact E.heatKernelEstimatesEvidence.offDiagonalGaussianClosed
  · exact E.heatKernelEstimatesEvidence.derivativeBoundsClosed
  · exact E.heatKernelEstimatesEvidence.parabolicHarnackClosed

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

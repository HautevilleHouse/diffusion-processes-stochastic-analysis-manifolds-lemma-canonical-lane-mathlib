import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticFlowInvariancePackage (A : AdmissibleClass) where
  stochasticFlow : Prop
  manifold : Type u
  riemannianMetric : Prop
  invarianceCondition : Prop
  parallelTransport : Prop
  martingaleCharacterization : Prop

structure StochasticFlowInvarianceEvidence (F : StochasticFlowInvariancePackage A) where
  stochasticFlowClosed : F.stochasticFlow
  riemannianMetricClosed : F.riemannianMetric
  invarianceConditionClosed : F.invarianceCondition
  parallelTransportClosed : F.parallelTransport
  martingaleCharacterizationClosed : F.martingaleCharacterization

def StochasticFlowInvarianceClosed (F : StochasticFlowInvariancePackage A) : Prop :=
  F.stochasticFlow ∧ F.riemannianMetric ∧ F.invarianceCondition ∧
  F.parallelTransport ∧ F.martingaleCharacterization

theorem stochastic_flow_invariance_closed_from_evidence
    (F : StochasticFlowInvariancePackage A) (E : StochasticFlowInvarianceEvidence F) :
    StochasticFlowInvarianceClosed F := by
  exact And.intro E.stochasticFlowClosed
    (And.intro E.riemannianMetricClosed
      (And.intro E.invarianceConditionClosed
        (And.intro E.parallelTransportClosed E.martingaleCharacterizationClosed)))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
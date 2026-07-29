import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.MalliavinCalculusPackage

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticFlowPackage where
  flowMap : Type u
  stochasticDifferentialEquation : Type v
  existenceAndUniqueness : Prop
  markovProperty : Prop
  invariantMeasure : Type w

structure StochasticFlowEvidence (F : StochasticFlowPackage) where
  existenceAndUniquenessClosed : F.existenceAndUniqueness
  markovPropertyClosed : F.markovProperty

def StochasticFlowClosed (F : StochasticFlowPackage) : Prop :=
  F.existenceAndUniqueness ∧ F.markovProperty

theorem stochastic_flow_closed_from_evidence (F : StochasticFlowPackage)
    (E : StochasticFlowEvidence F) : StochasticFlowClosed F := by
  exact And.intro E.existenceAndUniquenessClosed E.markovPropertyClosed

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
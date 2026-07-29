import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticAnalysisPackage where
  diffusionOperator : Type u
  generatorDefined : Prop
  invariantMeasure : Prop
  ergodicity : Prop
  generatorDefinedTerm : generatorDefined
  invariantMeasureTerm : invariantMeasure
  ergodicityTerm : ergodicity

structure StochasticAnalysisEvidence (S : StochasticAnalysisPackage) where
  generatorDefinedClosed : S.generatorDefined
  invariantMeasureClosed : S.invariantMeasure
  ergodicityClosed : S.ergodicity

def StochasticAnalysisClosed (S : StochasticAnalysisPackage) : Prop :=
  S.generatorDefined ∧ S.invariantMeasure ∧ S.ergodicity

theorem stochastic_analysis_closed_from_evidence (S : StochasticAnalysisPackage)
    (E : StochasticAnalysisEvidence S) : StochasticAnalysisClosed S := by
  exact And.intro E.generatorDefinedClosed
    (And.intro E.invariantMeasureClosed E.ergodicityClosed)

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
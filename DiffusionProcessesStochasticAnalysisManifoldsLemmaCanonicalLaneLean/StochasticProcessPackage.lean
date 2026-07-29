import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticProcessPackage where
  indexSpace : Type u
  stateSpace : Type v
  topology : TopologicalSpace stateSpace
  filtration : Type w
  adaptedness : Prop
  pathRegularity : Prop
  initialDistribution : Prop

structure StochasticProcessEvidence (P : StochasticProcessPackage) where
  adaptednessClosed : P.adaptedness
  pathRegularityClosed : P.pathRegularity
  initialDistributionClosed : P.initialDistribution

def StochasticProcessClosed (P : StochasticProcessPackage) : Prop :=
  P.adaptedness ∧ P.pathRegularity ∧ P.initialDistribution

theorem stochastic_process_closed_from_evidence
    (P : StochasticProcessPackage) (E : StochasticProcessEvidence P) :
    StochasticProcessClosed P := by
  exact And.intro E.adaptednessClosed (And.intro E.pathRegularityClosed E.initialDistributionClosed)

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

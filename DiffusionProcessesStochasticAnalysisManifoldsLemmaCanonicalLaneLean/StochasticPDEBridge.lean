import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticPDEBridgePackage where
  sdeCoefficients : Type
  itoFormulaApplied : Prop
  fokkerPlanckDerived : Prop
  generatorExtended : Prop
  carreDuChamp : Prop

structure StochasticPDEBridgeEvidence (B : StochasticPDEBridgePackage) where
  itoFormulaAppliedClosed : B.itoFormulaApplied
  fokkerPlanckDerivedClosed : B.fokkerPlanckDerived
  generatorExtendedClosed : B.generatorExtended
  carreDuChampClosed : B.carreDuChamp

def StochasticPDEBridgeClosed (B : StochasticPDEBridgePackage) : Prop :=
  B.itoFormulaApplied ∧ B.fokkerPlanckDerived ∧ B.generatorExtended ∧ B.carreDuChamp

theorem stochastic_pde_bridge_closed_from_evidence
    (B : StochasticPDEBridgePackage) (E : StochasticPDEBridgeEvidence B) :
    StochasticPDEBridgeClosed B := by
  exact And.intro E.itoFormulaAppliedClosed
    (And.intro E.fokkerPlanckDerivedClosed
      (And.intro E.generatorExtendedClosed E.carreDuChampClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

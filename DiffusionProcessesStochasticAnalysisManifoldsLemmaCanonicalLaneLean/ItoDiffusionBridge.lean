import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.StochasticDifferentialEquations

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure ItoDiffusionBridgePackage {A : AdmissibleClass} (S : StochasticDifferentialEquationPackage A) where
  generator : Prop
  backwardKolmogorov : Prop
  transitionDensity : Prop
  fellerProperty : Prop
  martingaleProblem : Prop
  bridgeClosedProperty : Prop

structure ItoDiffusionBridgeEvidence {A : AdmissibleClass}
    {S : StochasticDifferentialEquationPackage A} (I : ItoDiffusionBridgePackage S) where
  generatorClosed : I.generator
  backwardKolmogorovClosed : I.backwardKolmogorov
  transitionDensityClosed : I.transitionDensity
  fellerPropertyClosed : I.fellerProperty
  martingaleProblemClosed : I.martingaleProblem
  bridgeClosedPropertyClosed : I.bridgeClosedProperty

def ItoDiffusionBridgeClosed {A : AdmissibleClass}
    {S : StochasticDifferentialEquationPackage A} (I : ItoDiffusionBridgePackage S) : Prop :=
  I.generator ∧ I.backwardKolmogorov ∧ I.transitionDensity ∧
  I.fellerProperty ∧ I.martingaleProblem ∧ I.bridgeClosedProperty

theorem ito_diffusion_bridge_closed_from_evidence
    {A : AdmissibleClass} {S : StochasticDifferentialEquationPackage A}
    (I : ItoDiffusionBridgePackage S) (E : ItoDiffusionBridgeEvidence I) :
    ItoDiffusionBridgeClosed I := by
  exact And.intro E.generatorClosed
    (And.intro E.backwardKolmogorovClosed
      (And.intro E.transitionDensityClosed
        (And.intro E.fellerPropertyClosed
          (And.intro E.martingaleProblemClosed E.bridgeClosedPropertyClosed))))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
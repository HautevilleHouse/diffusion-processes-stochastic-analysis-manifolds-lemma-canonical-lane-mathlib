import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Stochastic.BrownianMotion

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticDifferentialEquationPackage (A : AdmissibleClass) where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  brownianMotion : Prop
  sdeDefinition : Prop
  driftField : Prop
  diffusionField : Prop
  solutionExistence : Prop
  solutionUniqueness : Prop

structure StochasticDifferentialEquationEvidence {A : AdmissibleClass} (S : StochasticDifferentialEquationPackage A) where
  smoothStructureClosed : S.smoothStructure
  brownianMotionClosed : S.brownianMotion
  sdeDefinitionClosed : S.sdeDefinition
  driftFieldClosed : S.driftField
  diffusionFieldClosed : S.diffusionField
  solutionExistenceClosed : S.solutionExistence
  solutionUniquenessClosed : S.solutionUniqueness

def StochasticDifferentialEquationClosed {A : AdmissibleClass} (S : StochasticDifferentialEquationPackage A) : Prop :=
  S.smoothStructure ∧ S.brownianMotion ∧ S.sdeDefinition ∧
  S.driftField ∧ S.diffusionField ∧ S.solutionExistence ∧ S.solutionUniqueness

theorem stochastic_differential_equation_closed_from_evidence
    {A : AdmissibleClass} (S : StochasticDifferentialEquationPackage A)
    (E : StochasticDifferentialEquationEvidence S) :
    StochasticDifferentialEquationClosed S := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.brownianMotionClosed
      (And.intro E.sdeDefinitionClosed
        (And.intro E.driftFieldClosed
          (And.intro E.diffusionFieldClosed
            (And.intro E.solutionExistenceClosed E.solutionUniquenessClosed)))))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
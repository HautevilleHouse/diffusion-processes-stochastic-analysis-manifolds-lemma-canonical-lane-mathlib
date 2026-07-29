import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticPDEPackage where
  diffusionCoefficient : Prop
  driftTerm : Prop
  itoFormula : Prop
  weakSolution : Prop
  strongSolution : Prop
  diffusionCoefficientClosed : diffusionCoefficient
  driftTermClosed : driftTerm
  itoFormulaClosed : itoFormula
  weakSolutionClosed : weakSolution
  strongSolutionClosed : strongSolution

structure StochasticPDEEvidence (S : StochasticPDEPackage) where
  diffusionCoefficientClosed : S.diffusionCoefficient
  driftTermClosed : S.driftTerm
  itoFormulaClosed : S.itoFormula
  weakSolutionClosed : S.weakSolution
  strongSolutionClosed : S.strongSolution

def StochasticPDEClosed (S : StochasticPDEPackage) : Prop := S.diffusionCoefficient ∧ S.driftTerm ∧ S.itoFormula ∧ S.weakSolution ∧ S.strongSolution

theorem stochastic_pde_closed_from_evidence (S : StochasticPDEPackage) (E : StochasticPDEEvidence S) : StochasticPDEClosed S := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.driftTermClosed (And.intro E.itoFormulaClosed (And.intro E.weakSolutionClosed E.strongSolutionClosed)))

end HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
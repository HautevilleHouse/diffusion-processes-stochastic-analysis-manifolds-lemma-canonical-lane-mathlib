import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure MartingaleProblemPackage where
  localMartingaleCharacterization : Prop
  quadraticVariation : Prop
  levyCharacterization : Prop
  representationTheorem : Prop
  localMartingaleCharacterizationClosed : localMartingaleCharacterization
  quadraticVariationClosed : quadraticVariation
  levyCharacterizationClosed : levyCharacterization
  representationTheoremClosed : representationTheorem

structure MartingaleProblemEvidence (M : MartingaleProblemPackage) where
  localMartingaleCharacterizationClosed : M.localMartingaleCharacterization
  quadraticVariationClosed : M.quadraticVariation
  levyCharacterizationClosed : M.levyCharacterization
  representationTheoremClosed : M.representationTheorem

def MartingaleProblemClosed (M : MartingaleProblemPackage) : Prop := M.localMartingaleCharacterization ∧ M.quadraticVariation ∧ M.levyCharacterization ∧ M.representationTheorem

theorem martingale_problem_closed_from_evidence (M : MartingaleProblemPackage) (E : MartingaleProblemEvidence M) : MartingaleProblemClosed M := by
  exact And.intro E.localMartingaleCharacterizationClosed (And.intro E.quadraticVariationClosed (And.intro E.levyCharacterizationClosed E.representationTheoremClosed))

end HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
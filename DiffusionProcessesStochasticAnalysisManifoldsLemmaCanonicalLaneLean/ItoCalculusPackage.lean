import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure ItoCalculusPackage where
  semimartingaleDecomposition : Prop
  quadraticVariation : Prop
  stochasticIntegralExistence : Prop
  itoFormula : Prop

structure ItoCalculusEvidence (I : ItoCalculusPackage) where
  semimartingaleDecompositionClosed : I.semimartingaleDecomposition
  quadraticVariationClosed : I.quadraticVariation
  stochasticIntegralExistenceClosed : I.stochasticIntegralExistence
  itoFormulaClosed : I.itoFormula

def ItoCalculusClosed (I : ItoCalculusPackage) : Prop :=
  I.semimartingaleDecomposition ∧ I.quadraticVariation ∧
  I.stochasticIntegralExistence ∧ I.itoFormula

theorem ito_calculus_closed_from_evidence
    (I : ItoCalculusPackage) (E : ItoCalculusEvidence I) :
    ItoCalculusClosed I := by
  exact And.intro E.semimartingaleDecompositionClosed
    (And.intro E.quadraticVariationClosed
      (And.intro E.stochasticIntegralExistenceClosed E.itoFormulaClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

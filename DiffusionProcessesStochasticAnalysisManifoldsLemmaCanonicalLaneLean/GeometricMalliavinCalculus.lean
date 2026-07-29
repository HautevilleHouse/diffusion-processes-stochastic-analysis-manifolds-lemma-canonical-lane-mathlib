import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure GeometricMalliavinCalculusPackage (A : AdmissibleClass) where
  manifold : Type u
  connection : Prop
  stochasticDevelopment : Prop
  malliavinDerivative : Prop
  clarkOconeFormula : Prop
  integrationByParts : Prop
  supportTheorem : Prop

structure GeometricMalliavinCalculusEvidence (G : GeometricMalliavinCalculusPackage A) where
  connectionClosed : G.connection
  stochasticDevelopmentClosed : G.stochasticDevelopment
  malliavinDerivativeClosed : G.malliavinDerivative
  clarkOconeFormulaClosed : G.clarkOconeFormula
  integrationByPartsClosed : G.integrationByParts
  supportTheoremClosed : G.supportTheorem

def GeometricMalliavinCalculusClosed (G : GeometricMalliavinCalculusPackage A) : Prop :=
  G.connection ∧ G.stochasticDevelopment ∧ G.malliavinDerivative ∧
  G.clarkOconeFormula ∧ G.integrationByParts ∧ G.supportTheorem

theorem geometric_malliavin_calculus_closed_from_evidence
    (G : GeometricMalliavinCalculusPackage A) (E : GeometricMalliavinCalculusEvidence G) :
    GeometricMalliavinCalculusClosed G := by
  exact And.intro E.connectionClosed
    (And.intro E.stochasticDevelopmentClosed
      (And.intro E.malliavinDerivativeClosed
        (And.intro E.clarkOconeFormulaClosed
          (And.intro E.integrationByPartsClosed E.supportTheoremClosed))))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.DiffusionOperatorLemmas

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure StochasticDifferentialGeometryPackage where
  manifold : Type u
  connection : Type v
  stochasticDevelopment : Prop
  horowitzMaruyamaFormula : Prop

structure StochasticDifferentialGeometryEvidence (G : StochasticDifferentialGeometryPackage) where
  stochasticDevelopmentClosed : G.stochasticDevelopment
  horowitzMaruyamaFormulaClosed : G.horowitzMaruyamaFormula

def StochasticDifferentialGeometryClosed (G : StochasticDifferentialGeometryPackage) : Prop :=
  G.stochasticDevelopment ∧ G.horowitzMaruyamaFormula

theorem stochastic_differential_geometry_closed_from_evidence
    (G : StochasticDifferentialGeometryPackage)
    (E : StochasticDifferentialGeometryEvidence G) : StochasticDifferentialGeometryClosed G := by
  exact And.intro E.stochasticDevelopmentClosed E.horowitzMaruyamaFormulaClosed

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
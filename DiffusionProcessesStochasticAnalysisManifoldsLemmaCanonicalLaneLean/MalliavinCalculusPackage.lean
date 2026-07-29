import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.StochasticDifferentialGeometry

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure MalliavinCalculusPackage where
  gaussianWhiteNoise : Type u
  derivativeOperator : Type v
  divergenceOperator : Type w
  ornsteinUhlenbeckOperator : Type x
  integrationByParts : Prop

structure MalliavinCalculusEvidence (M : MalliavinCalculusPackage) where
  integrationByPartsClosed : M.integrationByParts

def MalliavinCalculusClosed (M : MalliavinCalculusPackage) : Prop :=
  M.integrationByParts

theorem malliavin_calculus_closed_from_evidence (M : MalliavinCalculusPackage)
    (E : MalliavinCalculusEvidence M) : MalliavinCalculusClosed M := by
  exact E.integrationByPartsClosed

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
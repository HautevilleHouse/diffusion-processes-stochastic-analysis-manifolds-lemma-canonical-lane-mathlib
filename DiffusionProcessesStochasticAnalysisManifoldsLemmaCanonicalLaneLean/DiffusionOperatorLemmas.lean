import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.StochasticProcessPackage

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure DiffusionOperatorPackage where
  generator : Type u
  domain : Type v
  martingaleProperty : Prop
  carreDuChamp : Type w

structure DiffusionOperatorEvidence (D : DiffusionOperatorPackage) where
  martingalePropertyClosed : D.martingaleProperty

def DiffusionOperatorClosed (D : DiffusionOperatorPackage) : Prop :=
  D.martingaleProperty

theorem diffusion_operator_closed_from_evidence (D : DiffusionOperatorPackage)
    (E : DiffusionOperatorEvidence D) : DiffusionOperatorClosed D := by
  exact E.martingalePropertyClosed

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
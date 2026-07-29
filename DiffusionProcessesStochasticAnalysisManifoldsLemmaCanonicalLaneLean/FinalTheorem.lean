import canonicalLaneMathlib.AdmissibleClass
import DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.BridgeLemmas
import DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

def ConstrainedDiffusionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diffusion_endgame (A : AdmissibleClass) : ConstrainedDiffusionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
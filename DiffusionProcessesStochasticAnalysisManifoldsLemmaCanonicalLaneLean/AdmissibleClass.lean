import DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DiffusionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffusionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
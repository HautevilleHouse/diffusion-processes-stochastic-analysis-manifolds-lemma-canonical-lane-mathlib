import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure SdeWellPosednessPackage where
  existence : Prop
  uniqueness : Prop
  strongSolution : Prop
  weakSolution : Prop

structure SdeWellPosednessEvidence (S : SdeWellPosednessPackage) where
  existenceClosed : S.existence
  uniquenessClosed : S.uniqueness
  strongSolutionClosed : S.strongSolution
  weakSolutionClosed : S.weakSolution

def SdeWellPosednessClosed (S : SdeWellPosednessPackage) : Prop :=
  S.existence ∧ S.uniqueness ∧ S.strongSolution ∧ S.weakSolution

theorem sde_well_posedness_closed_from_evidence
    (S : SdeWellPosednessPackage) (E : SdeWellPosednessEvidence S) :
    SdeWellPosednessClosed S := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed
      (And.intro E.strongSolutionClosed E.weakSolutionClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure DiffusionProcessPackage where
  driftTerm : Prop
  diffusionTerm : Prop
  generator : Prop
  martingaleProblemWellPosedness : Prop

structure DiffusionProcessEvidence (D : DiffusionProcessPackage) where
  driftTermClosed : D.driftTerm
  diffusionTermClosed : D.diffusionTerm
  generatorClosed : D.generator
  martingaleProblemWellPosednessClosed : D.martingaleProblemWellPosedness

def DiffusionProcessClosed (D : DiffusionProcessPackage) : Prop :=
  D.driftTerm ∧ D.diffusionTerm ∧ D.generator ∧ D.martingaleProblemWellPosedness

theorem diffusion_process_closed_from_evidence
    (D : DiffusionProcessPackage) (E : DiffusionProcessEvidence D) :
    DiffusionProcessClosed D := by
  exact And.intro E.driftTermClosed
    (And.intro E.diffusionTermClosed
      (And.intro E.generatorClosed E.martingaleProblemWellPosednessClosed))

end DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
end HautevilleHouse

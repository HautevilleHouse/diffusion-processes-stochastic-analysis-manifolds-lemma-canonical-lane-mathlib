import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure InvariantMeasurePackage where
  stationaryDistribution : Prop
  ergodicity : Prop
  mixing : Prop
  spectralGap : Prop
  stationaryDistributionClosed : stationaryDistribution
  ergodicityClosed : ergodicity
  mixingClosed : mixing
  spectralGapClosed : spectralGap

structure InvariantMeasureEvidence (I : InvariantMeasurePackage) where
  stationaryDistributionClosed : I.stationaryDistribution
  ergodicityClosed : I.ergodicity
  mixingClosed : I.mixing
  spectralGapClosed : I.spectralGap

def InvariantMeasureClosed (I : InvariantMeasurePackage) : Prop := I.stationaryDistribution ∧ I.ergodicity ∧ I.mixing ∧ I.spectralGap

theorem invariant_measure_closed_from_evidence (I : InvariantMeasurePackage) (E : InvariantMeasureEvidence I) : InvariantMeasureClosed I := by
  exact And.intro E.stationaryDistributionClosed (And.intro E.ergodicityClosed (And.intro E.mixingClosed E.spectralGapClosed))

end HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
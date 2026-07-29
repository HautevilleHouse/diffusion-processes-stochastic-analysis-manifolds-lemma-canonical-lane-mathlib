import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean

structure HormanderConditionPackage where
  lieBracketCondition : Prop
  hypoellipticity : Prop
  smoothTransitionDensity : Prop
  supportTheorem : Prop
  lieBracketConditionClosed : lieBracketCondition
  hypoellipticityClosed : hypoellipticity
  smoothTransitionDensityClosed : smoothTransitionDensity
  supportTheoremClosed : supportTheorem

structure HormanderConditionEvidence (H : HormanderConditionPackage) where
  lieBracketConditionClosed : H.lieBracketCondition
  hypoellipticityClosed : H.hypoellipticity
  smoothTransitionDensityClosed : H.smoothTransitionDensity
  supportTheoremClosed : H.supportTheorem

def HormanderConditionClosed (H : HormanderConditionPackage) : Prop := H.lieBracketCondition ∧ H.hypoellipticity ∧ H.smoothTransitionDensity ∧ H.supportTheorem

theorem hormander_condition_closed_from_evidence (H : HormanderConditionPackage) (E : HormanderConditionEvidence H) : HormanderConditionClosed H := by
  exact And.intro E.lieBracketConditionClosed (And.intro E.hypoellipticityClosed (And.intro E.smoothTransitionDensityClosed E.supportTheoremClosed))

end HautevilleHouse.DiffusionProcessesStochasticAnalysisManifoldsLemmaCanonicalLaneLean
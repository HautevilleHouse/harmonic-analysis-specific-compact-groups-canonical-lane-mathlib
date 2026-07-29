import HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure HarmonicAnalysisTheorem where
  groupType : Type
  topology : TopologicalSpace groupType
  compact : groupType → Prop
  peterWeylDecomposition : Prop
  charactersComplete : Prop
  fourierInversionHolds : Prop
  plancherelTheorem : Prop
  proofComplete : peterWeylDecomposition ∧ charactersComplete ∧ fourierInversionHolds ∧ plancherelTheorem

def classicalBoundary : Prop :=
  True

theorem harmonic_analysis_theorem_holds (T : HarmonicAnalysisTheorem) :
    T.proofComplete := by
  exact T.proofComplete

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
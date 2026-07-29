import HarmoniousAnalysisSpecificCompactGroupsCanonicalLaneLean.ConvergenceAnalysis

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure EndpointClassificationPackage {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} {C : ConvergenceAnalysisPackage Z}
    (V : ConvergenceAnalysisClosed C) where
  targetGroup : CompactGroup
  harmonicAnalysisComplete : Prop
  endpointMatchesFourierTheory : Prop

structure EndpointClassificationEvidence {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} {C : ConvergenceAnalysisPackage Z}
    {V : ConvergenceAnalysisClosed C} (E : EndpointClassificationPackage V) where
  harmonicAnalysisCompleteClosed : E.harmonicAnalysisComplete
  endpointMatchesFourierTheoryClosed : E.endpointMatchesFourierTheory

def EndpointClassificationClosed {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} {C : ConvergenceAnalysisPackage Z}
    {V : ConvergenceAnalysisClosed C} (E : EndpointClassificationPackage V) : Prop :=
  E.harmonicAnalysisComplete ∧ E.endpointMatchesFourierTheory

theorem endpoint_classification_closed_from_evidence {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} {C : ConvergenceAnalysisPackage Z}
    {V : ConvergenceAnalysisClosed C} (E : EndpointClassificationPackage V)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.harmonicAnalysisCompleteClosed Ev.endpointMatchesFourierTheoryClosed

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
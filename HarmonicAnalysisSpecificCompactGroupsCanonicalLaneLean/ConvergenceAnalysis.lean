import HarmoniousAnalysisSpecificCompactGroupsCanonicalLaneLean.DualSpaceCharacterization

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure ConvergenceAnalysisPackage {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W} (Z : DualSpaceCharacterizationClosed D) where
  summationMethodSummable : Prop
  fejerKernelConverges : Prop
  abelSummability : Prop

structure ConvergenceAnalysisEvidence {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} (C : ConvergenceAnalysisPackage Z) where
  summationMethodSummableClosed : C.summationMethodSummable
  fejerKernelConvergesClosed : C.fejerKernelConverges
  abelSummabilityClosed : C.abelSummability

def ConvergenceAnalysisClosed {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} (C : ConvergenceAnalysisPackage Z) : Prop :=
  C.summationMethodSummable ∧ C.fejerKernelConverges ∧ C.abelSummability

theorem convergence_analysis_closed_from_evidence {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} {D : DualSpaceCharacterizationPackage W}
    {Z : DualSpaceCharacterizationClosed D} (C : ConvergenceAnalysisPackage Z)
    (E : ConvergenceAnalysisEvidence C) : ConvergenceAnalysisClosed C := by
  exact And.intro E.summationMethodSummableClosed
    (And.intro E.fejerKernelConvergesClosed E.abelSummabilityClosed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
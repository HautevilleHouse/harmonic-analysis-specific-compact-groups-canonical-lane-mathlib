import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure CompactGroupRepresentation where
  group : Type u
  groupTopology : TopologicalSpace group
  groupCompact : CompactSpace group
  groupTopologicalGroup : TopologicalGroup group
  representationSpace : Type v
  representationSpaceNormed : NormedAddCommGroup representationSpace
  representationSpaceInner : InnerProductSpace ℝ representationSpace
  groupAction : ContinuousLinearMap group (representationSpace →L[ℝ] representationSpace)
  unitaryCondition : Prop

structure CompactGroupRepresentationEvidence (R : CompactGroupRepresentation) where
  unitaryConditionClosed : R.unitaryCondition

def CompactGroupRepresentationClosed (R : CompactGroupRepresentation) : Prop :=
  R.unitaryCondition

theorem compact_group_representation_closed_from_evidence
    (R : CompactGroupRepresentation) (E : CompactGroupRepresentationEvidence R) :
    CompactGroupRepresentationClosed R := by
  exact E.unitaryConditionClosed

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
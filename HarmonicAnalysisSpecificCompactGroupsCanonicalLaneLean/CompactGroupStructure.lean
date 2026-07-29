import canonicalLaneMathlib.AdmissibleClass
import Mathlib.GroupTheory.Subgroup
import Mathlib.Topology.Instances.Real

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure CompactGroupStructure where
  G : Type u
  [topologicalGroup : TopologicalGroup G]
  [compactSpace : CompactSpace G]
  [t2Space : T2Space G]
  haarMeasure : Measure G
  haarMeasureIsHaar : IsHaarMeasure haarMeasure
  dualGroup : Type v
  [topologicalGroupDual : TopologicalGroup dualGroup]
  pontryaginDuality : Prop

structure CompactGroupEvidence (C : CompactGroupStructure) where
  haarMeasureClosed : IsHaarMeasure C.haarMeasure
  pontryaginDualityClosed : C.pontryaginDuality

def CompactGroupClosed (C : CompactGroupStructure) : Prop :=
  IsHaarMeasure C.haarMeasure ∧ C.pontryaginDuality

theorem compact_group_closed_from_evidence (C : CompactGroupStructure)
    (E : CompactGroupEvidence C) : CompactGroupClosed C := by
  exact And.intro E.haarMeasureClosed E.pontryaginDualityClosed

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
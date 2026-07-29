import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure CompactGroup where
  carrier : Type
  topology : TopologicalSpace carrier
  group : Group carrier
  topologicalGroup : TopologicalGroup carrier
  compact : CompactSpace carrier
  unitaryDual : Type
  unitaryDualTopology : TopologicalSpace unitaryDual

structure AdmissibleClass where
  object : CompactGroup
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HarmonicAnalysisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
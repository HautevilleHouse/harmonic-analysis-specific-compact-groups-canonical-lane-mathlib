import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroups

structure CompactGroupType where
  carrier : Type u
  group : Group carrier
  compact : TopologicalSpace carrier
  hausdorff : T2Space carrier
  smoothStructure : Boolean

structure PrimitiveCompactGroup where
  group : CompactGroupType
  haarMeasure : Type v
  dualGroup : Type w
  representationCategory : Type x
  haarMeasureExistence : Prop
  dualGroupIsDiscrete : Prop
  representationCategorySemisimple : Prop
  haarMeasureExistenceTerm : haarMeasureExistence
  dualGroupIsDiscreteTerm : dualGroupIsDiscrete
  representationCategorySemisimpleTerm : representationCategorySemisimple

structure AdmissibleClassForGroup (A : AdmissibleClass) where
  group : PrimitiveCompactGroup
  bridgeClosed : A.endpointSatisfied
  gateClosed : A.remainderRecorded

end HarmonicAnalysisSpecificCompactGroups
end HautevilleHouse

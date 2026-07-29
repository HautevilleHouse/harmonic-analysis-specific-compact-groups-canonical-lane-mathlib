import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure HarmonicAnalysisAdmissibleObject where
  G : Type u
  [topologicalGroup : TopologicalGroup G]
  [compactSpace : CompactSpace G]
  [t2Space : T2Space G]
  haarMeasure : Measure G
  haarMeasureIsHaar : IsHaarMeasure haarMeasure
  conclusion : Prop

def HarmonicAnalysisAdmittedClosure (O : HarmonicAnalysisAdmissibleObject) : Prop :=
  O.conclusion

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
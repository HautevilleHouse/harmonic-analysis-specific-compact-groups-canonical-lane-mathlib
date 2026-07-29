import HarmoniousAnalysisSpecificCompactGroupsCanonicalLaneLean.PeterWeylTheorem

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure DualSpaceCharacterizationPackage {G : CompactGroup} {P : PeterWeylPackage G} (W : PeterWeylClosed G P) where
  unitaryDualDiscrete : Prop
  fallsowsClassification : Prop
  fourierTransformIsometric : Prop

structure DualSpaceCharacterizationEvidence {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} (D : DualSpaceCharacterizationPackage W) where
  unitaryDualDiscreteClosed : D.unitaryDualDiscrete
  fallsowsClassificationClosed : D.fallsowsClassification
  fourierTransformIsometricClosed : D.fourierTransformIsometric

def DualSpaceCharacterizationClosed {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} (D : DualSpaceCharacterizationPackage W) : Prop :=
  D.unitaryDualDiscrete ∧ D.fallsowsClassification ∧ D.fourierTransformIsometric

theorem dual_space_characterization_closed_from_evidence {G : CompactGroup} {P : PeterWeylPackage G}
    {W : PeterWeylClosed G P} (D : DualSpaceCharacterizationPackage W) (E : DualSpaceCharacterizationEvidence D) :
    DualSpaceCharacterizationClosed D := by
  exact And.intro E.unitaryDualDiscreteClosed
    (And.intro E.fallsowsClassificationClosed E.fourierTransformIsometricClosed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
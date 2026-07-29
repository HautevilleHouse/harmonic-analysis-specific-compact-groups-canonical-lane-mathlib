import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroups

structure RepresentationTheoryPackage {G : PrimitiveCompactGroup} where
  unitaryRepresentations : Type u
  schurOrthogonality : Prop
  characters : Type v
  characterOrthogonality : Prop
  completeReducibility : Prop
  schurOrthogonalityTerm : schurOrthogonality
  characterOrthogonalityTerm : characterOrthogonality
  completeReducibilityTerm : completeReducibility

def RepresentationTheoryClosed {G : PrimitiveCompactGroup}
    (R : RepresentationTheoryPackage G) : Prop :=
  R.schurOrthogonality ∧ R.characterOrthogonality ∧ R.completeReducibility

theorem representation_theory_closed_from_package {G : PrimitiveCompactGroup}
    (R : RepresentationTheoryPackage G) : RepresentationTheoryClosed R := by
  exact And.intro R.schurOrthogonalityTerm
    (And.intro R.characterOrthogonalityTerm R.completeReducibilityTerm)

end HarmonicAnalysisSpecificCompactGroups
end HautevilleHouse

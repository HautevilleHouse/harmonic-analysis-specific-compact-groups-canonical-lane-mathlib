import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure CharacterTheoryPackage (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] where
  irreducibleCharacters : Type v
  characterOrthogonality : Bool
  classFunctionsBasis : Bool
  characterFormula : Bool

structure CharacterTheoryEvidence (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (C : CharacterTheoryPackage G) where
  characterOrthogonalityClosed : C.characterOrthogonality
  classFunctionsBasisClosed : C.classFunctionsBasis
  characterFormulaClosed : C.characterFormula

def CharacterTheoryClosed (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (C : CharacterTheoryPackage G) : Prop :=
  C.characterOrthogonality ∧ C.classFunctionsBasis ∧ C.characterFormula

theorem character_theory_closed_from_evidence (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (C : CharacterTheoryPackage G) (E : CharacterTheoryEvidence G C) :
    CharacterTheoryClosed G C := by
  exact And.intro E.characterOrthogonalityClosed (And.intro E.classFunctionsBasisClosed E.characterFormulaClosed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
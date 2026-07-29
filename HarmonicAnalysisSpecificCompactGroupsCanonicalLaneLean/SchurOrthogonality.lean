import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure SchurOrthogonalityPackage (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] where
  irreducibleRepresentations : Type v
  matrixCoefficients : irreducibleRepresentations → (G → ℂ)
  innerProductOnMatrixCoeff : Bool
  orthogonalityRelations : Bool
  schurLemmaCharacter : Bool

structure SchurOrthogonalityEvidence (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (S : SchurOrthogonalityPackage G) where
  innerProductOnMatrixCoeffClosed : S.innerProductOnMatrixCoeff
  orthogonalityRelationsClosed : S.orthogonalityRelations
  schurLemmaCharacterClosed : S.schurLemmaCharacter

def SchurOrthogonalityClosed (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (S : SchurOrthogonalityPackage G) : Prop :=
  S.innerProductOnMatrixCoeff ∧ S.orthogonalityRelations ∧ S.schurLemmaCharacter

theorem schur_orthogonality_closed_from_evidence (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (S : SchurOrthogonalityPackage G) (E : SchurOrthogonalityEvidence G S) :
    SchurOrthogonalityClosed G S := by
  exact And.intro E.innerProductOnMatrixCoeffClosed (And.intro E.orthogonalityRelationsClosed E.schurLemmaCharacterClosed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
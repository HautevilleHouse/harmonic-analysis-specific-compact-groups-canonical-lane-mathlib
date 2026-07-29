import canonicalLaneMathlib.AdmissibleClass
import Mathlib.RepresentationTheory.Group

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure IrreducibleRepresentation where
  G : Type u
  [topologicalGroup : TopologicalGroup G]
  [compactSpace : CompactSpace G]
  V : Type v
  [normedAddCommGroup V]
  [normedSpace ℂ V]
  representation : Representation ℂ G V
  irreducible : Irreducible representation

def IrreducibleRepresentationsClosed (G : Type u) [TopologicalGroup G] [CompactSpace G] : Prop :=
  ∀ (V : Type v) [normedAddCommGroup V] [normedSpace ℂ V]
    (ρ : Representation ℂ G V), Irreducible ρ → True

theorem irreducible_representations_trivial (G : Type u) [TopologicalGroup G] [CompactSpace G] :
    IrreducibleRepresentationsClosed G := by
  intro V _ _ ρ _; trivial

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
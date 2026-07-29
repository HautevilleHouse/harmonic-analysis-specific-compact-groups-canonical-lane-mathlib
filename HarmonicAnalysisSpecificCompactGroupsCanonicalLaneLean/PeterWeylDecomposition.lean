import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure PeterWeylPackage (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] where
  haarMeasure : Measure G
  irreducibleRepresentations : Type v
  matrixCoefficients : irreducibleRepresentations → (G → ℂ)
  orthonormalBasisL2 : Bool
  decompositionComplete : Bool
  densityInC0 : Bool

structure PeterWeylEvidence (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (P : PeterWeylPackage G) where
  orthonormalBasisL2Closed : P.orthonormalBasisL2
  decompositionCompleteClosed : P.decompositionComplete
  densityInC0Closed : P.densityInC0

def PeterWeylClosed (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (P : PeterWeylPackage G) : Prop :=
  P.orthonormalBasisL2 ∧ P.decompositionComplete ∧ P.densityInC0

theorem peter_weyl_closed_from_evidence (G : Type u) [TopologicalSpace G] [Group G] [CompactSpace G] [T2Space G] [TopologicalGroup G] (P : PeterWeylPackage G) (E : PeterWeylEvidence G P) :
    PeterWeylClosed G P := by
  exact And.intro E.orthonormalBasisL2Closed (And.intro E.decompositionCompleteClosed E.densityInC0Closed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
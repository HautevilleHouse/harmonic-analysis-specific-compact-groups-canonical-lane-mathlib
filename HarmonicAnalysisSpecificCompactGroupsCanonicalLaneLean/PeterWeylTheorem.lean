import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure PeterWeylPackage (R : CompactGroupRepresentation) where
  irreducibleDecomposition : Prop
  matrixCoefficientBasis : Prop
  densityResult : Prop

structure PeterWeylEvidence (R : CompactGroupRepresentation) (P : PeterWeylPackage R) where
  irreducibleDecompositionClosed : P.irreducibleDecomposition
  matrixCoefficientBasisClosed : P.matrixCoefficientBasis
  densityResultClosed : P.densityResult

def PeterWeylClosed (R : CompactGroupRepresentation) (P : PeterWeylPackage R) : Prop :=
  P.irreducibleDecomposition ∧ P.matrixCoefficientBasis ∧ P.densityResult

theorem peter_weyl_closed_from_evidence
    (R : CompactGroupRepresentation) (P : PeterWeylPackage R) (E : PeterWeylEvidence R P) :
    PeterWeylClosed R P := by
  exact And.intro E.irreducibleDecompositionClosed
    (And.intro E.matrixCoefficientBasisClosed E.densityResultClosed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
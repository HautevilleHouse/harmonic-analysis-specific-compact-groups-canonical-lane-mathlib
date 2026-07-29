import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Fourier

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean

structure CharactersAndFourierPackage where
  G : Type u
  [topologicalGroup : TopologicalGroup G]
  [compactSpace : CompactSpace G]
  [t2Space : T2Space G]
  characterGroup : Type v
  [topologicalGroupChar : TopologicalGroup characterGroup]
  fourierTransformDefined : Prop
  inversionFormulaHolds : Prop
  plancherelTheoremHolds : Prop

structure CharactersAndFourierEvidence (C : CharactersAndFourierPackage) where
  fourierTransformDefinedClosed : C.fourierTransformDefined
  inversionFormulaHoldsClosed : C.inversionFormulaHolds
  plancherelTheoremHoldsClosed : C.plancherelTheoremHolds

def CharactersAndFourierClosed (C : CharactersAndFourierPackage) : Prop :=
  C.fourierTransformDefined ∧ C.inversionFormulaHolds ∧ C.plancherelTheoremHolds

theorem characters_and_fourier_closed_from_evidence
    (C : CharactersAndFourierPackage) (E : CharactersAndFourierEvidence C) :
    CharactersAndFourierClosed C := by
  exact And.intro E.fourierTransformDefinedClosed
    (And.intro E.inversionFormulaHoldsClosed E.plancherelTheoremHoldsClosed)

end HarmonicAnalysisSpecificCompactGroupsCanonicalLaneLean
end HautevilleHouse
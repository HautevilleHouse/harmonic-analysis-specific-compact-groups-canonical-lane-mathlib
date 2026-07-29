import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroups

structure FourierTransformPackage {G : PrimitiveCompactGroup} {P : PeterWeylPackage G} where
  fourierTransform : Type u
  inversionFormula : Prop
  plancherelTheorem : Prop
  convolutionTheorem : Prop
  rieszFisherTheorem : Prop

structure FourierTransformEvidence {G : PrimitiveCompactGroup} {P : PeterWeylPackage G}
    (F : FourierTransformPackage G P) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem
  convolutionTheoremClosed : F.convolutionTheorem
  rieszFisherTheoremClosed : F.rieszFisherTheorem

def FourierTransformClosed {G : PrimitiveCompactGroup} {P : PeterWeylPackage G}
    (F : FourierTransformPackage G P) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem ∧ F.convolutionTheorem ∧ F.rieszFisherTheorem

theorem fourier_transform_closed_from_evidence {G : PrimitiveCompactGroup} {P : PeterWeylPackage G}
    (F : FourierTransformPackage G P) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.plancherelTheoremClosed
      (And.intro E.convolutionTheoremClosed E.rieszFisherTheoremClosed))

end HarmonicAnalysisSpecificCompactGroups
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisSpecificCompactGroups

structure BochnerIntegrationPackage {G : PrimitiveCompactGroup} where
  vectorValuedIntegral : Type u
  dominatedConvergence : Prop
  strongBochnerProperty : Prop
  integrableFunctions : Type v
  dominatedConvergenceTerm : dominatedConvergence
  strongBochnerPropertyTerm : strongBochnerProperty

def BochnerIntegrationClosed {G : PrimitiveCompactGroup}
    (B : BochnerIntegrationPackage G) : Prop :=
  B.dominatedConvergence ∧ B.strongBochnerProperty

theorem bochner_integration_closed_from_package {G : PrimitiveCompactGroup}
    (B : BochnerIntegrationPackage G) : BochnerIntegrationClosed B := by
  exact And.intro B.dominatedConvergenceTerm B.strongBochnerPropertyTerm

end HarmonicAnalysisSpecificCompactGroups
end HautevilleHouse

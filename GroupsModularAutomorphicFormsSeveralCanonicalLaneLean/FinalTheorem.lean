import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsModularAutomorphicFormsSeveralCanonicalLaneLean

def ConstrainedModularFormsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_modular_forms_closure (A : AdmissibleClass) : ConstrainedModularFormsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem groups_modular_automorphic_forms_several_endgame :
    ∀ A : AdmissibleClass, ConstrainedModularFormsClosure A := fun A =>
  constrained_modular_forms_closure A

end GroupsModularAutomorphicFormsSeveralCanonicalLaneLean
end HautevilleHouse

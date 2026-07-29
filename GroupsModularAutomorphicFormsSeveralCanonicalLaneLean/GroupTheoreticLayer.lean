import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsModularAutomorphicFormsSeveralCanonicalLaneLean

structure GroupTheoreticDatum where
  groupLabel : String
  groupAction : String
  automorphicForm : String
  bridgeWitness : Bool

def primitiveGroupTheoreticDatum : GroupTheoreticDatum := {
  groupLabel := "GL₂(ℚ)\GL₂(𝔸)",
  groupAction := "right translation on automorphic forms",
  automorphicForm := "cusp form with Hecke eigenvalues",
  bridgeWitness := true
}

def GroupTheoreticDatumClosed (D : GroupTheoreticDatum) : Prop := 
  D.bridgeWitness = true

theorem group_theoretic_datum_closed_checked :
    GroupTheoreticDatumClosed primitiveGroupTheoreticDatum := by
  rfl

end GroupsModularAutomorphicFormsSeveralCanonicalLaneLean
end HautevilleHouse
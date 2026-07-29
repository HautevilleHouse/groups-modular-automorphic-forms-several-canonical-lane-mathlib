import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsModularAutomorphicFormsSeveralCanonicalLaneLean

structure ModularFormDatum where
  weight : ℕ
  level : ℕ
  character : String
  formType : String
  bridgeChecked : Bool

def primitiveModularFormDatum : ModularFormDatum := {
  weight := 2,
  level := 1,
  character := "trivial",
  formType := "cusp form",
  bridgeChecked := true
}

def ModularFormDatumClosed (D : ModularFormDatum) : Prop :=
  D.bridgeChecked = true

theorem modular_form_datum_closed_checked :
    ModularFormDatumClosed primitiveModularFormDatum := by
  rfl

end GroupsModularAutomorphicFormsSeveralCanonicalLaneLean
end HautevilleHouse
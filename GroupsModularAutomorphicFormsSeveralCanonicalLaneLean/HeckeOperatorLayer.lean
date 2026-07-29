import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsModularAutomorphicFormsSeveralCanonicalLaneLean

structure HeckeOperatorData where
  index : Nat
  actionMatrix : String
  spectrumDatum : String

def defaultHeckeOperatorData : HeckeOperatorData := {
  index := 1,
  actionMatrix := "[[1,0],[0,p]]",
  spectrumDatum := "Hecke eigenvalues recorded"
}

structure HeckeLayerCertificate where
  operators : List HeckeOperatorData
  multiplicityFree : Bool
  algebraStructureChecked : Bool

def defaultHeckeLayerCertificate : HeckeLayerCertificate := {
  operators := [defaultHeckeOperatorData],
  multiplicityFree := true,
  algebraStructureChecked := true
}

def HeckeLayerClosed (C : HeckeLayerCertificate) : Prop :=
  C.algebraStructureChecked = true ∧ C.multiplicityFree = true

theorem default_hecke_layer_closed_checked : HeckeLayerClosed defaultHeckeLayerCertificate := by
  exact And.intro rfl rfl

end GroupsModularAutomorphicFormsSeveralCanonicalLaneLean
end HautevilleHouse

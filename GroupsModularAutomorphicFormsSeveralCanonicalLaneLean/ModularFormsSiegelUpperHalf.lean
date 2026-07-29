import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsModularAutomorphicFormsSeveralCanonicalLaneLean

structure SiegelUpperHalfSpaceData where
  dimension : Nat
  symmetricSpaceType : String
  complexStructureFlag : Bool

structure SiegelModularFormData where
  weight : List Nat
  genus : Nat
  level : Nat
  cuspData : String
  fourierCoefficients : List (String × String)

def defaultSiegelUpperHalfSpaceData : SiegelUpperHalfSpaceData := {
  dimension := 2,
  symmetricSpaceType := "Siegel upper half-space of degree 2",
  complexStructureFlag := true
}

def defaultSiegelModularFormData : SiegelModularFormData := {
  weight := [2, 2],
  genus := 2,
  level := 1,
  cuspData := "standard cusp at infinity",
  fourierCoefficients := [("constantTerm", "0"), ("firstFourierCoeff", "1")]
}

end GroupsModularAutomorphicFormsSeveralCanonicalLaneLean
end HautevilleHouse

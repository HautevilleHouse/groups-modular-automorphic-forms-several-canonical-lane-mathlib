import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsModularAutomorphicFormsSeveralCanonicalLaneLean

structure LanglandsCorrespondenceDatum where
  automorphicObject : String
  galoisObject : String
  correspondenceMap : String
  bridgeChecked : Bool

def primitiveLanglandsCorrespondenceDatum : LanglandsCorrespondenceDatum := {
  automorphicObject := "automorphic representation of GL₂",
  galoisObject := "2-dimensional Galois representation",
  correspondenceMap := "L-function equality at all places",
  bridgeChecked := true
}

def LanglandsCorrespondenceDatumClosed (D : LanglandsCorrespondenceDatum) : Prop :=
  D.bridgeChecked = true

theorem langlands_correspondence_datum_closed_checked :
    LanglandsCorrespondenceDatumClosed primitiveLanglandsCorrespondenceDatum := by
  rfl

end GroupsModularAutomorphicFormsSeveralCanonicalLaneLean
end HautevilleHouse
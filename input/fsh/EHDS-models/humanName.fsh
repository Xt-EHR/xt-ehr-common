Logical: EHDSHumanName
//Id: EHDShumanName
Title: "Human name"
Description: """C.27 - EHDS refined base model for Human name"""
Characteristics: #can-be-target

* use 0..1 CodeableConcept "C.27.1 - Use" """Identifies the purpose for this name."""
  * ^binding.description = "hl7:NameUse"
  * ^binding.strength = #preferred
* text 0..1 string "C.27.2 - Text" """Specifies the entire name as it should be displayed e.g. on an application UI. This may be provided instead of or as well as the specific parts."""
* family 0..* string "C.27.3 - Family" """The family name/surname/last name of the patient. This field can contain more than one  element or multiple fields could be present."""
* given 0..* string "C.27.4 - Given" """The given name/first name  (also known as forename or first name)."""
* prefix 0..* string "C.27.5 - Prefix" """Name parts that come before the name. Prefixes appear in the correct order for presenting the name."""
* suffix 0..* string "C.27.6 - Suffix" """Name parts that come after the name. Suffixes appear in the correct order for presenting the name."""
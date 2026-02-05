Logical: EHDSHumanName
//Id: EHDShumanName
Title: "Human name model"
Description: "EHDS refined base model for Human name"

* use 0..1 CodeableConcept "Identifies the purpose for this name."
  * ^binding.description = "hl7:NameUse"
  * ^binding.strength = #preferred
* text 0..1 string "Specifies the entire name as it should be displayed e.g. on an application UI."
* family 0..* string "The family name/surname/last name of the person."
* given 0..* string "The given name/first name also known as forename or first name."
* prefix 0..* string "Name parts that come before the name. Prefixes appear in the correct order for presenting the name."
* suffix 0..* string "Name parts that come after the name. Suffixes appear in the correct order for presenting the name."

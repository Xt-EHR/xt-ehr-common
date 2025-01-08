Logical: EHDSSubstance
//Id: EHDSsubstance
Title: "Substance"
Description: """C.28 - EHDS refined base model for Substance"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.28.1 - Identifier" """Unique identifier for the substance. For an instance, an identifier associated with the package/container (usually a label affixed directly)."""
* code 0..* CodeableConcept "C.28.2 - Code" """A code (or set of codes) that identify this substance."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "C.28.3 - Description" """A description of the substance - its appearance, handling requirements, and other usage notes."""
* expiry 0..1 dateTime "C.28.4 - Expiry" """When the substance is no longer valid to use. """
* quantity 0..1 Quantity "C.28.5 - Quantity" """The amount of the substance."""
* ingredients 0..* Base "C.28.6 - Ingredients" """Composition information about the substance"""
  * quantity 0..1 Ratio "C.28.6.1 - Quantity" """The amount of the ingredient in the substance - a concentration ratio."""
  * substance 1..1 Reference (EHDSSubstance) "C.28.6.2 - Substance" """Another substance that is a component of this substance."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred

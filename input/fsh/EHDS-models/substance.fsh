Logical: EHDSSubstance
//Id: EHDSsubstance
Title: "Substance model"
Description: """EHDS refined base model for Substance"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Unique identifier for the substance. For an instance, an identifier associated with the package/container (usually a label affixed directly)."""
* code 0..* CodeableConcept "Code" """A code (or set of codes) that identify this substance."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "Description" """A description of the substance - its appearance, handling requirements, and other usage notes."""
* expiry 0..1 dateTime "Expiry" """When the substance is no longer valid to use. """
* quantity 0..1 Quantity "Quantity" """The amount of the substance."""
* ingredients 0..* Base "Ingredients" """Composition information about the substance"""
  * quantity 0..1 Ratio "Quantity" """The amount of the ingredient in the substance - a concentration ratio."""
  * substance 1..1 Reference (EHDSSubstance) "Substance" """Another substance that is a component of this substance."""
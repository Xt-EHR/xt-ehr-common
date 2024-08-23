/*Logical: EHDSDosagingCore
Title: "Dosaging (model) - reduced"
Description: """Dosaging of medication. Minimum dataset that should typically be supported by prescribing systems. Hospital use cases are likely to need a more granular model."""
Characteristics: #can-be-target

* doseRegimen 0..* BackboneElement "The regimen governing the dose quantity per single administration, the dose frequency/speed of administration. In many systems only one structured regimen is allowed. In case of changing regimen (esp in hospital context), multiple dose regimens in a sequence are used."
  * durationOfDosaging 0..1 Period "Duration of this specific dose regimen"
  * numberOfUnitsPerIntake 0..1 Quantity ".."
  * frequencyPerIntake 0..1 Quantity ".."
  * duration 0..1 Quantity ".."
  * routeOfAdministration 0..1 CodeableConcept ".."
  * text 0..1 String ".." //includes patientInstruction
  * timingOfIntake 0..1 CodeableConcept "FHIR when"

*/

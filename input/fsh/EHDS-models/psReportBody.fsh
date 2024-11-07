Logical: EHDSPatientSummaryBody
//Id: EHDSpatientSummaryBody
Title: "Patient summary body"
Description: """B.1 - EHDS refined base model for Patient summary body data elements"""
Characteristics: #can-be-target

* alerts 1..1 Base "B.1.1 - Alerts" """Alert section includes information about allergies, intolerances and other substantial alerts or warnings that health professionals should be aware of. """
  * allergy 1..* EHDSAllergyIntolerance "B.1.1.1 - Allergy" """A record of allergies and intolerances."""
  * medicalAlert 0..* EHDSAlertFlag "B.1.1.2 - Medical alert" """Medical alert information (other alerts not included in allergies)."""

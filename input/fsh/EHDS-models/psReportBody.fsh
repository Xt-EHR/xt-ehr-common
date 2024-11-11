Logical: EHDSPatientSummaryBody
//Id: EHDSpatientSummaryBody
Title: "Patient summary body"
Description: """B.1 - EHDS refined base model for Patient summary body data elements"""
Characteristics: #can-be-target

* alerts 1..1 Base "B.1.1 - Alerts" """Alert section includes information about allergies, intolerances and other substantial alerts or warnings that health professionals should be aware of. """
  * allergy 1..* EHDSAllergyIntolerance "B.1.1.1 - Allergy" """A record of allergies and intolerances."""
  * medicalAlert 0..* EHDSAlertFlag "B.1.1.2 - Medical alert" """Medical alert information (other alerts not included in allergies)."""
* medicalHistory 1..1 Base "B.1.2 - Medical history" """Medical history"""
  * vaccination 0..* EHDSImmunization "B.1.2.1 - Vaccination" """Vaccination / prophylaxis information"""
  * pastProblems 0..* EHDSCondition "B.1.2.2 - Past problems" """Resolved, closed or inactive problems"""
  * medicalHistory 0..1 Base "B.1.2.3 - Medical history" """Medical history section"""
    * medicalHistory 0..* Narrative "B.1.2.3.1 - Medical history" """This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form.See Section 2, Chapter III, Art 7, (c)."""
* medicalProblems 1..1 Base "B.1.3 - Medical problems" """Medical problems section"""
  * currentProblems 1..* EHDSCondition "B.1.3.1 - Current problems" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter."""
  * medicalDevicesAndImplants 1..* EHDSDeviceUse "B.1.3.2 - Medical devices and implants" """Medical devices and implants section."""
  * procedures 1..* EHDSProcedure "B.1.3.3 - Procedures" """Major procedures."""
* functionalStatus 0..1 EHDSFunctionalStatus "B.1.3.4 - Functional status" """Need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."""
* medicationSummary 1..1 Base "B.1.4 - Medication summary" """Medication summary section"""
  * currentAndRelevantPastMedicines 1..* EHDSMedication "B.1.4.1 - Current and relevant past medicines" """Relevant prescribed medicines whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not, or medicines that influence current health status or are relevant to a clinical decision."""
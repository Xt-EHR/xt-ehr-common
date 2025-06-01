Logical: EHDSLaboratoryOrderBody
//Id: EHDSlaboratoryOrderBody
Title: "Laboratory order body model"
Description: """B.1 - EHDS refined base model for Laboratory order body"""
Characteristics: #can-be-target

* orderInformation 0..* Base "B.1.1 - Order information" """Order Information"""
  * orderId 1..* Identifier "B.1.1.1 - Order Id" """An identifier of the laboratory test order."""
  * orderDateAndTime 0..1 dateTime "B.1.1.2 - Order date and time" """Date and time of the order placement."""
  * orderText 0..1 string "B.1.1.3 - Order text" """A verbal description of the order or any supplementary requirements specific to each type of order, if they cannot be expressed formally."""
  * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganization or EHDSPatient "B.1.1.3 - Order placer" """The person/organization \"authorised\" to place the order. Order placer could be either a health professional, health professional organization or the patient himself."""
  * orderReasonText 0..* string "B.1.1.4 - Order reason text" """An explanation or justification for why this service is being requested in textual form."""
  * orderReason 0..* Reference (EHDSCondition or EHDSObservation) "B.1.1.5 - Order reason" """An explanation or justification for why this service is being requested in coded form. """
* encounter 0..1 Reference (EHDSEncounter) "B.1.2 - Encounter" """An encounter that provides additional information about the healthcare context in which this order is made."""
* supportingInformation 0..1 Base "B.1.3 - Supporting information" """Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements."""
  * observation 0..* EHDSObservation "B.1.3.1 - Observation" """Clinical findings and other observations."""
  * condition 0..* EHDSCondition "B.1.3.2 - Condition" """Condition that may influence the service or result interpretation."""
  * medicationAdministration 0..* EHDSMedicationAdministration "B.1.3.3 - Medication Administration" """Medication administered before ordering the service."""
  * sexForClinicalUse 0..* CodeableConcept "B.1.3.4 - Sex for clinical use" """A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population"""
    * ^binding.description = "HL7 sex-parameter-for-clinical-use"
    * ^binding.strength = #preferred
  * vaccination 0..* EHDSImmunization "B.1.3.5 - Vaccination" """Vaccination history of the patient. """
  * otherSupportingInformation 0..* Resource "B.1.3.6 - Other supporting information" """Any other type of relevant supporting information"""
* specimen 0..* EHDSSpecimen "B.1.4 - Specimen" """Specimen information"""
* serviceRequests 0..* EHDSServiceRequest "B.1.5 - Service requests" """Specification of requested service or services"""
* allergy 0..* EHDSAllergyIntolerance "B.1.6 - Allergy" """Allergies and intolerances that may affect order execution or interpretation of results"""
* alerts 0..* EHDSAlertFlag "B.1.7 - Alerts" """Alerts and warnings that may affect order execution or interpretation of results"""
* appointment 0..1 EHDSAppointment "B.1.8 - Appointment" """Information about the appointment (if the appointment has been booked)"""

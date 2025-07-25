Logical: EHDSLaboratoryOrderBody
//Id: EHDSlaboratoryOrderBody
Title: "Laboratory order body model"
Description: """B.1 - EHDS refined base model for Laboratory order body"""
Characteristics: #can-be-target

* orderInformation 0..* Base "Order Information"
  * orderId 1..* Identifier "An identifier of the laboratory test order."
  * orderDateAndTime 0..1 dateTime "Date and time of the order placement."
  * orderText 0..1 string "A verbal description of the order or any supplementary requirements specific to each type of order, if they cannot be expressed formally."
  * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself."
  * orderReasonText 0..* string "An explanation or justification for why this service is being requested in textual form."
  * orderReason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation "An explanation or justification for why this service is being requested in coded or structured form."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * clinicalQuestion 0..1 string "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation."
* encounter 0..1 Reference (EHDSEncounter) "An encounter that provides additional information about the healthcare context in which this order is made."
* supportingInformation 0..1 Base "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements."
  * observation 0..* EHDSObservation "Clinical findings and other observations."
  * condition 0..* EHDSCondition "Condition that may influence the service or result interpretation."
  * medicationAdministration 0..* EHDSMedicationAdministration "Medication administered before ordering the service."
  * sexForClinicalUse 0..* CodeableConcept "A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population"
    * ^binding.description = "HL7 sex-parameter-for-clinical-use"
    * ^binding.strength = #preferred
  * vaccination 0..* EHDSImmunisation "Vaccination history of the patient."
  * otherSupportingInformation 0..* Resource "Any other type of relevant supporting information"
* specimen 0..* EHDSSpecimen "Specimen information"
* serviceRequests 0..* EHDSServiceRequest "Specification of requested service or services"
* allergy 0..* EHDSAllergyIntolerance "Allergies and intolerances that may affect order execution or interpretation of results"
* alerts 0..* EHDSAlert "Alerts and warnings that may affect order execution or interpretation of results"
* appointment 0..1 EHDSAppointment "Information about the appointment (if the appointment has been booked)"

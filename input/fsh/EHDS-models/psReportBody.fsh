Logical: EHDSPatientSummaryBody
Title: "Patient summary body model"
Description: "EHDS model for Patient Summary body data elements"
Characteristics: #can-be-target

* alerts 1..1 Base "Information about allergies, intolerances and other substantial alerts or warnings that health professionals should be aware of. "
  * ^requirements = "eHN PS Guideline"
  * allergy 0..* EHDSAllergyIntolerance "Allergy or intolerance"
    * ^requirements = "eHN PS Guideline"
  * medicalAlert 0..* EHDSAlertFlag "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
    * ^requirements = "eHN PS Guideline"
* medicalHistory 1..1 Base "This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form."
  * vaccination 0..* EHDSImmunization " immunizations given to the patient and their status at the point of care. The primary purpose is to enable communication of a patient's immunization status. The section should include current immunization status and may contain the entire immunization history that is relevant to the period of time being summarized. Adverse reactions against vaccines should be documented in the allergy section."
    * ^requirements = "eHN PS Guideline"
  * pastProblems 0..* EHDSCondition "Problems or diagnoses that the patient suffered in the past, and which have been resolved, closed or declared as inactive (not included in current problems or diagnosis)"
    * ^requirements = "eHN PS Guideline"
  * text 0..1 string "This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form."
* currentProblems 1..1 Base "Current medical problems section"
  * healthConditions 0..* EHDSCondition "Health conditions affecting the health of the patient. Conditions that are important to be known for a health professional during a health encounter."
  * medicalDevicesAndImplants 1..* EHDSDeviceUse "Describes the patient’s implanted and external medical devices and equipment that their health status depends on. Includes devices (such as cardiac pacemakers, implantable defibrillator, prothesis, ferromagnetic bone implants etc.) that are important to know by the HP."
  * procedures 1..* EHDSProcedure "Major procedures."
  * functionalStatusAssessment 0..* EHDSFunctionalStatus "An individual’s ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"
* medicationSummary 1..1 Base "List of medications relevant for this patient summary. All medications that are relevant for the scope of the Patient Summary. Typically, medications whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not."
  * medicationTreatment 0..* EHDSMedicationAdministration "Current and relevant past medicine."
* socialHistory 0..1 Base "To present observations on social factors such as alcohol consumption or smoking. From the healthcare perspective, life-style factors relate to well-being but can also provide a source of risk factors."
  * description 1..1 string "Textual description of the social history."
  * observation 0..* EHDSObservation "Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"""
//    * referenceDateRange 0..* Period "Reference date range" """Example: from 1974 to 2004"""
* pregnancyHistory 0..1 Base "B.1.6 - Pregnancy history" """Pregnancy history section"""
  * currentPregnancyStatus 0..1 Base "Current pregnancy status"
//    * dateOfObservation 0..* dateTime "Date of observation" """Date on which the observation of the pregnancy state was made"""
    * status 0..* EHDSObservation "Current state at the date the observation was made: e.g. pregnant, not pregnant, unknown"
    * expectedDateOfDelivery 0..1 dateTime "Expected date of delivery" """Date on which the woman is due to give birth."""
  * previousPregnancies 0..1 Base ""History of previous pregnancies"
    * status 0..1 EHDSObservation "Previous pregnancies status: Yes, previous pregnancies; No, previous pregnancies; Unknown"
    * description 0..* Base "Previous pregnancy's descriptions in detail"
//      * outcomeDate 0..1 dateTime "B.1.6.2.2.1 - Outcome date" """Date referred to the previous pregnancies outcome"""
      * outcome 0..1 EHDSObservation "Outcome of the pregnancy"
      * numberOfChildren 0..1 integer "Number of children/fetuses in this specific pregnancy"
* patientProvidedData 0..1 Base "Patient provided data section"
  * travelHistory 0..* Base "captures relevant information about the patient's recent travel history that may be of clinical relevance — particularly in relation to exposure to infectious diseases, epidemiological risks, or environmental factors. The intent is to support clinical decision-making and risk assessment, especially in contexts such as outbreaks or endemic disease regions."
    * country 0..1 CodeableConcept "Country code"
      * ^binding.description = "ISO 3166"
      * ^binding.strength = #preferred
    * period 0..* Period "Date of entry and departure"
  * advanceDirective 0..1 Base "Advance Directive - provision for healthcare decisions if, in the future, a person is unable to make those decisions."
    * documentation 0..* CodeableConcept "May take the form of a reference to a legal document (e.g., Living Will) or an external textual description."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
* results 0..1 Base "This section assembles relevant observation results obtained on the patient. These may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results."
  * resultObservation[x] 0..* EHDSObservation or EHDSLaboratoryObservation "B.1.8.2 - Result observation" """Observation results pertaining to the subject of care's health condition and which might have impact on future treatments"""
* planOfCare 0..1 Base "Care plan - Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries"
  * description 0..1 string "Narrative containing the plan including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient. In the future it is expected that this Section could be provided in a structured and coded format."
  * planOfCareEntry 0..* EHDSCarePlan "Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a period of time, possibly limited to care for a specific condition or set of conditions."


/*
Need models: 
EHDSPregnancyObservation derived from EHDSObservation
EHDSSocialHistoryObservation derived from EHDSObservation
EHDSMedicationTreatment (instead of MedicationAdministration) - see ISO MEOW

Potentially remove:
EHDSMedicationAdministration?
EHDSCarePlan?
*/
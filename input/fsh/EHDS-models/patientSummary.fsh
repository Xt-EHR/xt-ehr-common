Logical: EHDSPatientSummary
Title: "Patient summary model"
Parent: EHDSDocument
Description: """The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard."""
Characteristics: #can-be-target


* header
  * period 
    * ^short = "Time period of information covered in the document"
    * ^definition = "Time period of information covered in the document"

* alerts 0..1 Base "Section: Alerts" "Substantial alerts or warnings that health professionals should be aware of."
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Reason for absence of data"
  * medicalAlert 0..* EHDSAlert "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
    * ^requirements = "ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* allergiesAndIntolerances 1..1 Base "Section: Allergies and intolerances"
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * allergyIntolerance 0..* EHDSAllergyIntolerance "List of structured allergies and intolerances"
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * emptyReason 0..1 CodeableConcept "Use if no Allergies are listed" "Reason for absence of data (indicates whether the person is known to have no allergies or the data is considered incomplete)"
    * ^binding.description = "1.3.6.1.4.1.12559.11.10.1.3.1.42.47eHDSIAbsentOrUnknownAllergy; http://hl7.org/fhir/ValueSet/list-empty-reason"
    * ^binding.strength = #preferred
    // * ^example[+].label = "value"
    // * ^example[=].valueCoding = #no-known-allergies "No known allergies"
    * ^requirements = "This element is present in MyHealth@EU specifications and ISO IPS. The proposed way of modelling is identical to the newest version of FHIR IPS IG. See general description of Patient summary modelling for more information about this element. MH@EU has a similar concept, but it is modelled in slightly different way."
  * note 0..1 string "Free text notes by the health professional"

* problems 1..1 Base "Section: Medical problems" """Conditions and symptoms affecting the health of the patient."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Use if no conditions are listed" 
  * problem 0..* EHDSCondition "Health conditions affecting the health of the patient."
  * note 0..1 string "Free text notes by the health professional"

* medicationSummary 1..1 Base "Section: Medication summary" """Current and relevant past medicines."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Use if no medicines are listed"
  * medicationUse 0..* EHDSMedicationUse "Medication treatment/prescription relevant for this patient summary. Typically, medications whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not."
  * note 0..1 string "Free text notes by the health professional"

* medicalDevicesAndImplants 1..1 Base "Section: Medical devices and implants" "The devices that are implanted in the patient and external medical devices and equipment that the health
status depends on."
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Reason for absence of data" 
  * deviceUse 0..* EHDSDeviceUse "Describes the patient's implanted and external medical devices and equipment that their health status depends on. Includes devices (such as cardiac pacemakers, implantable defibrillator, prothesis, ferromagnetic bone implants etc.) that are important to know by the HP."
  * note 0..1 string "Free text notes by the health professional"

* procedures 1..1 Base "Section: Procedures" "Significant procedures performed on the patient." 
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * emptyReason 0..1 CodeableConcept "Reason for absence of data"
  * procedure 0..* EHDSProcedure "List of procedures" 
  * note 0..1 string "Free text notes by the health professional"

* immunisations 0..1 Base "Section: Immunisations" """A patient's immunisation status (vaccination and other prophylaxis). The section should include current immunisation status and may contain the entire history that is relevant to the period of time being summarised. Adverse reactions against vaccines should be documented in the allergy section."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * immunisation 0..* EHDSImmunisation "Immunisations given to the patient and their status at the point of care."
    * ^requirements = "eHN PS Guideline"
  * note 0..1 string "Free text notes by the health professional"

* functionalStatus 0..1 Base "Section: Functional status" "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being."
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * condition 0..* EHDSCondition "Condition information describing patient's functional status or disability."
  * assessment 0..* EHDSObservation "Assessment results regarding functional status."
  * note 0..1 string "Free text notes by the health professional"

* socialHistory 0..1 Base "Section: Social history" """Observations on social factors such as alcohol consumption or smoking. From the healthcare perspective, life-style factors relate to well-being but can also provide a source of risk factors."""
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * observation 0..* EHDSObservation "Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"""
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* pregnancyHistory 0..1 Base "Section: Pregnancy history" """To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. """
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * currentPregnancyStatus 0..1 EHDSCurrentPregnancy "Current pregnancy status" """Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown."""
    * ^requirements = "eHN PS Guideline, ISO IPS"
  * previousPregnancies 0..* EHDSPregnancyHistory "History of previous pregnancies" """Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy."""
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* travelHistory 0..1 Base "Section: Travel history" "Captures relevant information about the patient's recent travel history that may be of clinical relevance — particularly in relation to exposure to infectious diseases, epidemiological risks, or environmental factors. The intent is to support clinical decision-making and risk assessment, especially in contexts such as outbreaks or endemic disease regions."
  * ^requirements = "eHN PS Guideline, ISO IPS"
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * travelHistory 0..* EHDSTravelHistory "Travel history for one country"
    * ^requirements = "eHN PS Guideline, ISO IPS"
  * note 0..1 string "Free text notes by the health professional"

* patientStory 0..1 Base "Section: Patient story" """A concise narrative from the patient’s perspective about their present health state. This is a record of things that a person feels are important to communicate about their needs, strengths, values, concerns and preferences to others providing support and care."""
  * ^requirements = "ISO IPS"
// TODO: if structured information is added or explicitly mentioned in the descriptions, we might still want to have note and generatedNarrative both.  
//  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * note 0..1 string "Free text notes by the health professional"

* advanceDirectives 0..1 Base "Section: Advance Directives" """Provision for healthcare decisions if, in the future, a person is unable to make those decisions."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * advanceDirective 0..* EHDSAdvanceDirective "Provision for healthcare decisions if, in the future, a person is unable to make those decisions"
  * note 0..1 string "Free text notes by the health professional"

* observationResults 0..1 Base "Section: Observation results" """Relevant observation results obtained on the patient. These may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results."""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * result 0..* EHDSObservation "Observation results pertaining to the subject of care's health condition and which might have impact on future treatments"
  * note 0..1 string "Free text notes by the health professional"

* carePlans 0..1 Base "Section: Care plans" """Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries"""
  * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
  * carePlan 0..* EHDSCarePlan "Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a period of time, possibly limited to care for a specific condition or set of conditions."
  * note 0..1 string "Free text notes by the health professional"

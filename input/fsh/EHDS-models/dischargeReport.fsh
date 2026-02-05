Logical: EHDSDischargeReport
Parent: EHDSDocument
Title: "Discharge Report model"
Description: """A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs."""
Characteristics: #can-be-target

//TODO: check the outcome of narrative vs note and correct accordingly
//TODO: check the outcome of discussion whether EHDSLaboratoryObservation needs to be mentioned in addition to EHDSObservation.

* header
  * status 
    * ^short = "Status of the document"
    * ^definition = "Status of the document"
  * author[x] 
    * ^short = "The author of the report."
    * ^definition = "The author of the report."
  * intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation "Intended recipient(s) of the information, i.e. a person or organisation that should be notified or be aware of the content. This element is used to indicate explicit communication intent and does not represent routine storage or passive availability of information (e.g. in portals). Listing an intended recipient does not create an assignment or responsibility."
  * period ^short = "Time of service that is being documented (typically the same as the time of encounter)"
// * header.healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information"
* body 0..1 Base "Structured body of the discharge report document" 
  * alerts 0..1 Base "Section: Alerts." "Information about substantial alerts or warnings (including allergies) that health professionals should be aware of."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.2"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * medicalAlert 0..* EHDSAlert "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.2.2, A.2.2.1"

  * encounterInformation 1..1 Base "Section: Encounter information."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.2"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * encounter 0..1 EHDSEncounter "Encounter information"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.3"
    * note 0..1 string "Free text notes by the health professional"

  * admissionEvaluation 0..1 Base "Section: Admission evaluation. Admission evaluation section should be reported only if it is relevant to ensure continuity of care."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.4"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * objectiveFindings 0..* EHDSObservation "Objective findings, such as anthropometric measurements, vital signs, or objective anatomical findings of physical examination"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.1"
    * functionalStatus 0..* EHDSFunctionalStatus "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.4.2"
    * note 0..1 string "Free text notes by the evaluation performer"
   
  * patientHistory 0..1 Base "Section: Patient health history (anamnesis) containing only information that is highly relevant for this specific episode of care. The model is designed with the expectation that patient summary is available."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.5"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section. In case the section includes structured information, it should also be included in generatedNarrative."
    * note 0..1 string "Free text notes by the health professional"

  * courseOfEncounter 0..1 Base "Course of inpatient or outpatient encounter."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.6"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * diagnosticSummary 0..* EHDSCondition "Problems that were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the encounter. At least one treated problem should be marked. Other problems are recorded only if they are important for continuity of care (after discharge)."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.1"
    * procedures 0..* EHDSProcedure "Procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. Diagnostic procedures are typically captured as observation results and not repeated here."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.2"   
    * medicalDevicesAndImplants 0..* EHDSDeviceUse "Medical devices (including implants) whose use was started, stopped, or otherwise modified during the encounter."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.3"    
    * pharmacotherapy 0..* EHDSMedicationStatement "Significant medication treatments during encounter. The content of this section may be repeated in the medication summary for full overview of patient's medications."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.5"
    * testResults[x] 0..* EHDSObservation or EHDSLaboratoryObservation "Significant medical test results of functional, diagnostic (including laboratory), and imaging examinations performed during encounter. This may include orders for which the results have not yet arrived."
    * note 0..1 string "Free text notes by the health professional"
 
  * dischargeDetails 0..1 Base "Discharge details" "Structured information should be provided, however if not available, at least a section narrative should be present."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.7"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * objectiveFindings 0..* EHDSObservation "Objective findings, such as anthropometric measurements, vital signs, or objective anatomical findings of physical examination"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.1"
    * functionalStatus 0..* EHDSFunctionalStatus "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being"
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.7.2"
    * note 0..1 string "Free text notes by the health professional"

  * medicationSummary 0..1 Base "Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.8.1"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * medicationUse 1..1 EHDSMedicationStatement "Details about medication and dosaging"
    * note 0..1 string "Free text notes by the health professional"

  * carePlan 0..1 Base "Care plan and other recommendations after discharge."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.8.2 (A.2.9.2)"
    * generatedNarrative 0..1 string "Narrative, potentially formatted, content of the whole section."
    * carePlan 0..* EHDSCarePlan "Structured care plan after discharge. Multiple care plans could be provided."
    * otherRecommendations 0..1 string "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc."
      * ^requirements = "eHN Guideline HDR (v1.1): A.2.8.3"
  * synthesis 0..1 string "Clinical synthesis (e.g. description of reasons and course of encounter) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions."
    * ^requirements = "eHN Guideline HDR (v1.1): A.2.6.7"
* attachments 0..* EHDSAttachment "Report attachments data elements"

# Discharge Report model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Discharge Report model**

## Logical Model: Discharge Report model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport | *Version*:0.2.1 |
| Draft as of 2025-11-27 | *Computable Name*:EHDSDischargeReport |

 
EHDS refined base model for Discharge Report 

Feedback is welcome on any aspect of the content.

However, the following topics have been identified as areas where input would be particularly valuable:

* **Pharmacotherapy section.** Is the section's purpose clear and the section useful in its current definition? Are the current implementations using the same approach, or is the section's content conveyed in the Medication Summary section? 
 
* **Diagnostic Summary section.** Is the section together with EHDSCondition model sufficient for capturing details related to a hospital encounter diagnostics? 
* **Medication Summary section.** In some jurisdictions, any handover of a medication to the patient at the time of discharge is marked in the report. Is the model capturing the information expected for this use case, or would it be captured better using EHDSMedicationDispense model. </div> 


**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDischargeReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDischargeReport.csv), [Excel](StructureDefinition-EHDSDischargeReport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDischargeReport",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport",
  "version" : "0.2.1",
  "name" : "EHDSDischargeReport",
  "title" : "Discharge Report model",
  "status" : "draft",
  "date" : "2025-11-27T07:14:42+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.xt-ehr.eu/"
        }
      ]
    }
  ],
  "description" : "EHDS refined base model for Discharge Report",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDocument",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDischargeReport",
        "path" : "EHDSDischargeReport",
        "short" : "Discharge Report model",
        "definition" : "EHDS refined base model for Discharge Report"
      },
      {
        "id" : "EHDSDischargeReport.header.intendedRecipient[x]",
        "path" : "EHDSDischargeReport.header.intendedRecipient[x]",
        "short" : "Intended recipient",
        "definition" : "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.header.healthInsuranceAndPaymentInformation",
        "path" : "EHDSDischargeReport.header.healthInsuranceAndPaymentInformation",
        "short" : "Health insurance and payment information",
        "definition" : "Health insurance and payment information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCoverage"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body",
        "path" : "EHDSDischargeReport.body",
        "short" : "Structured body of the discharge report document",
        "definition" : "Structured body of the discharge report document",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.advanceDirectives",
        "path" : "EHDSDischargeReport.body.advanceDirectives",
        "short" : "Section: Advance Directives.",
        "definition" : "Provision for healthcare decisions if, in the future, a person is unable to make those decisions.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.advanceDirectives.narrative",
        "path" : "EHDSDischargeReport.body.advanceDirectives.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative, potentially formatted, content of the section",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.advanceDirectives.advanceDirective",
        "path" : "EHDSDischargeReport.body.advanceDirectives.advanceDirective",
        "short" : "Provision for healthcare decisions if, in the future, a person is unable to make those decisions",
        "definition" : "Provision for healthcare decisions if, in the future, a person is unable to make those decisions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.alerts",
        "path" : "EHDSDischargeReport.body.alerts",
        "short" : "Section: Alerts.",
        "definition" : "Information about substantial alerts or warnings that health professionals should be aware of.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.alerts.narrative",
        "path" : "EHDSDischargeReport.body.alerts.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative, potentially formatted, content of the section",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.alerts.medicalAlert",
        "path" : "EHDSDischargeReport.body.alerts.medicalAlert",
        "short" : "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat.",
        "definition" : "Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.2.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.alerts.allergyAndIntolerance",
        "path" : "EHDSDischargeReport.body.alerts.allergyAndIntolerance",
        "short" : "Allergy and Intolerance. A record of allergies and intolerances (primarily to be used for new allergies or intolerances that occurred during the encounter).",
        "definition" : "Allergy and Intolerance. A record of allergies and intolerances (primarily to be used for new allergies or intolerances that occurred during the encounter).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.2.1",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.encounterInformation",
        "path" : "EHDSDischargeReport.body.encounterInformation",
        "short" : "Section: Encounter information.",
        "definition" : "Section: Encounter information.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.2",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.encounterInformation.narrative",
        "path" : "EHDSDischargeReport.body.encounterInformation.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative, potentially formatted, content of the section",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.encounterInformation.encounter",
        "path" : "EHDSDischargeReport.body.encounterInformation.encounter",
        "short" : "Encounter information",
        "definition" : "Encounter information",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation",
        "path" : "EHDSDischargeReport.body.admissionEvaluation",
        "short" : "Section: Admission evaluation",
        "definition" : "Admission evaluation section should be reported exceptionally only if it is relevant to ensure continuity of care.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.narrative",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings",
        "short" : "Objective findings",
        "definition" : "Sub-section with objective findings.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.narrative",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.time",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.time",
        "short" : "Date and time of the admission evaluation examination",
        "definition" : "Date and time of the admission evaluation examination",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.performer",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.performer",
        "short" : "Health professional(s) responsible for the admission evaluation examination.",
        "definition" : "Health professional(s) responsible for the admission evaluation examination.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.anthropometricObservations",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.anthropometricObservations",
        "short" : "Anthropometric observations, such as body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.",
        "definition" : "Anthropometric observations, such as body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.vitalSigns",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.vitalSigns",
        "short" : "Vital signs observations. Mandatory: pulse rate, respiratory rate, systolic and diastolic blood pressure with site information; optional: 02 saturation",
        "definition" : "Vital signs observations. Mandatory: pulse rate, respiratory rate, systolic and diastolic blood pressure with site information; optional: 02 saturation",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.physicalExamination",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.physicalExamination",
        "short" : "Physical examination",
        "definition" : "Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus",
        "short" : "Section: Functional status",
        "definition" : "Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.For details see: https://paciowg.github.io/functional-status-ig/",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.narrative",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative, potentially formatted, content of the section",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.functionalStatusAssessment",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.functionalStatusAssessment",
        "short" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "definition" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory",
        "path" : "EHDSDischargeReport.body.patientHistory",
        "short" : "Section: Patient health history (anamnesis).",
        "definition" : "Section: Patient health history (anamnesis).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.narrative",
        "path" : "EHDSDischargeReport.body.patientHistory.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory",
        "short" : "Medical history subsection.",
        "definition" : "Medical history subsection.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.narrative",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pastProblems",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pastProblems",
        "short" : "Past problems",
        "definition" : "A list of conditions of a patient that the patient suffered in the past or still suffers. Unlike diagnostic summary, medical history is not only a list of problems, but could contain broader description of the condition and its progress, details about treatment including medication and patient response to treatment. Past problem section (unlike the same section of the patient summary) should include only conditions that are important for continuity of care. This section, if provided, complements the diagnostic summary section of the discharge report. ",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.1",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.devicesAndImplants",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.devicesAndImplants",
        "short" : "Devices and Implants",
        "definition" : "Devices and implants in patient anamnesis. Negative statement must be explicitly stated.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.2",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.historyOfProcedures",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.historyOfProcedures",
        "short" : "History of procedures",
        "definition" : "Historical procedures performed on or for a patient, relevant for the current encounter.Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, etc.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.vaccination",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.vaccination",
        "short" : "Vaccination history of the patient.",
        "definition" : "Vaccination history of the patient.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.epidemiologicalHistory",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.epidemiologicalHistory",
        "short" : "Epidemiological history",
        "definition" : "Travel history and infectious contacts",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.5",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts",
        "short" : "Infectious contacts of the patient",
        "definition" : "Infectious contacts of the patient",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.5.1",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSInfectiousContact"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.epidemiologicalHistory.travelHistory",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.epidemiologicalHistory.travelHistory",
        "short" : "Travel history reported by the patient. Multiple records could be provided.",
        "definition" : "Travel history reported by the patient. Multiple records could be provided.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.1.5.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTravelHistory"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory",
        "short" : "Section: Pregnancy history",
        "definition" : "To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. ",
        "requirements" : "eHN Guideline PS (v3.4) A2.6, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.currentPregnancyStatus",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.currentPregnancyStatus",
        "short" : "Current pregnancy status",
        "definition" : "Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnanciesStatus",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnanciesStatus",
        "short" : "Overall status of previous pregnancies",
        "definition" : "Overall status of previous pregnancies, including \n    — Yes, previous pregnancies \n    — No, previous pregnancies \n    — Unknown",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnancies",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnancies",
        "short" : "History of previous pregnancies",
        "definition" : "Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.familyHistorySection",
        "path" : "EHDSDischargeReport.body.patientHistory.familyHistorySection",
        "short" : "Family history section",
        "definition" : "Relevant family history section.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.familyHistorySection.narrative",
        "path" : "EHDSDischargeReport.body.patientHistory.familyHistorySection.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.familyHistorySection.familyHistory",
        "path" : "EHDSDischargeReport.body.patientHistory.familyHistorySection.familyHistory",
        "short" : "Family history",
        "definition" : "Information about serious illnesses in close blood relatives with known or suspected genetic potential or with possible impact on patient care.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFamilyMemberHistory"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth",
        "short" : "Social determinants of health",
        "definition" : "Information about social determinants of health. ",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.narrative",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.narrative",
        "short" : "Sub-section narrative",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety",
        "short" : "Participation in society",
        "definition" : "Participation in society details.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.3.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety.workSituation",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety.workSituation",
        "short" : "Work situation",
        "definition" : "Work Situation describes the extent to which and in what way the patient participates in the workforce. Work is meant in the broadest sense of the word: activities that contribute to the person themselves, their environment or society. This includes both paid and unpaid work.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety.hobby",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety.hobby",
        "short" : "An activity the patient enjoys doing in their free time.",
        "definition" : "An activity the patient enjoys doing in their free time.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety.socialNetwork",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.participationInSociety.socialNetwork",
        "short" : "Social network",
        "definition" : "A description of the patient’s social network, such as family, neighbours and friends.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.educationSection",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.educationSection",
        "short" : "Education section",
        "definition" : "Information about patient education level.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.3.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.educationSection.educationLevel",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.educationSection.educationLevel",
        "short" : "Education level",
        "definition" : "Indication of the highest level of education achieved.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:v3.EducationLevel"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.educationSection.comment",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.educationSection.comment",
        "short" : "If deemed relevant, a specification of the degree program can be provided by means of an explanation (e.g.: patient is in medical school).",
        "definition" : "If deemed relevant, a specification of the degree program can be provided by means of an explanation (e.g.: patient is in medical school).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation",
        "short" : "Living situation - household type and other related living situation information.",
        "definition" : "Living situation - household type and other related living situation information.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.3.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation.houseType",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation.houseType",
        "short" : "Type of home the patient lives in.",
        "definition" : "Type of home the patient lives in.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation.homeAdaption",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation.homeAdaption",
        "short" : "Home adaptions present in the home that have been made in the context of the illness or disability to make the functioning of the patient safer and more comfortable and to enable independent living. Multiple data elements could be provided.",
        "definition" : "Home adaptions present in the home that have been made in the context of the illness or disability to make the functioning of the patient safer and more comfortable and to enable independent living. Multiple data elements could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation.livingConditions",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.livingSituation.livingConditions",
        "short" : "Living conditions that affect the accessibility of the home or the stay in the home.",
        "definition" : "Living conditions that affect the accessibility of the home or the stay in the home.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation",
        "short" : "Family situation",
        "definition" : "Family situation",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.3.4",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.comment",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.comment",
        "short" : "Comment on the family situation.",
        "definition" : "Comment on the family situation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.familyComposition",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.familyComposition",
        "short" : "Family composition",
        "definition" : "The family composition describes the patient’s home situation and the form of cohabitation. A family can consist of one or more people.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.maritalStatus",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.maritalStatus",
        "short" : "Person’s marital status according to the terms and definition in the national civil code.",
        "definition" : "Person’s marital status according to the terms and definition in the national civil code.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:marital-status"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.numberOfChildren",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.numberOfChildren",
        "short" : "Number of children",
        "definition" : "The number of children the patient has. Children in the context of this information model include step children, foster children, biological and adopted children.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.numberOfChildrenAtHome",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.numberOfChildrenAtHome",
        "short" : "Number of children living at home with the patient.",
        "definition" : "Number of children living at home with the patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails",
        "short" : "Child details (age, co-living status and comment).",
        "definition" : "Child details (age, co-living status and comment).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails.livingAtHome",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails.livingAtHome",
        "short" : "Living at home. An indication stating whether the child lives at home.",
        "definition" : "Living at home. An indication stating whether the child lives at home.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails.dateOfBirth",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails.dateOfBirth",
        "short" : "Child’s date of birth.",
        "definition" : "Child’s date of birth.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails.comment",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.childDetails.comment",
        "short" : "A comment on the child's family situation.",
        "definition" : "A comment on the child's family situation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.careResponsibility",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.familySituation.careResponsibility",
        "short" : "Care responsibility. The activities the patient carries out to care for a dependent family member.",
        "definition" : "Care responsibility. The activities the patient carries out to care for a dependent family member.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances",
        "short" : "Use of substances",
        "definition" : "Information about use and/or abuse of specific substances.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.4",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.narrative",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.alcoholUse",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.alcoholUse",
        "short" : "Alcohol consumption by the patient. Multiple records on alcohol use could be provided.",
        "definition" : "Alcohol consumption by the patient. Multiple records on alcohol use could be provided.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.4.1",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstanceUse"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.tobaccoUse",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.tobaccoUse",
        "short" : "Tobacco use",
        "definition" : "Represent smoking or tobacco habits. Multiple records on tobacco use could be provided.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.4.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstanceUse"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.drugConsumption",
        "path" : "EHDSDischargeReport.body.patientHistory.socialDeterminantsOfHealth.useOfSubstances.drugConsumption",
        "short" : "Consumption of drugs and other substances (in terms of abuse).",
        "definition" : "Consumption of drugs and other substances (in terms of abuse).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.5.4.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstanceUse"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter",
        "path" : "EHDSDischargeReport.body.courseOfEncounter",
        "short" : "Course of inpatient or outpatient encounter.",
        "definition" : "Course of inpatient or outpatient encounter.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
        "short" : "Diagnostic summary. All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care.",
        "definition" : "The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.narrative",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.narrative",
        "short" : "Problem specification in narrative form.",
        "definition" : "Problem specification in narrative form.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails",
        "short" : "Problems that were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the encounter. At least one problem should be marked as treated. Other problems are recorded only if they are important for continuity of care (after discharge).",
        "definition" : "Problems that were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the encounter. At least one problem should be marked as treated. Other problems are recorded only if they are important for continuity of care (after discharge).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.presentOnAdmission",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.presentOnAdmission",
        "short" : "Whether the condition was present on admission or acquired during encounter",
        "definition" : "Category of the problem allows flagging for conditions acquired during encounter.",
        "comment" : "Value set can include Present on admission [POA], Hospital acquired condition [HAC], Not applicable or Unknown",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.treatmentClass",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.treatmentClass",
        "short" : "Class of the problem (treated, other) in relation to the encounter.",
        "definition" : "Class of the problem (treated, other) in relation to the encounter.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.problem",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.problem",
        "short" : "Problem details include code that identifies problem, specification of the body structure, laterality, and other aspects of the problem.",
        "definition" : "Problem details include code that identifies problem, specification of the body structure, laterality, and other aspects of the problem.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures",
        "short" : "Significant procedures section",
        "definition" : "Significant surgical and non-surgical procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. This section does not include purely diagnostic procedures (MRI, CT, etc.). If no significant performance has been performed, this fact must be explicitly stated using the IPS Absent and Unknown Data.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures.narrative",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures.procedureEntry",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures.procedureEntry",
        "short" : "Structured procedure entry.",
        "definition" : "Structured procedure entry.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants",
        "short" : "Medical devices and implants section",
        "definition" : "Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or its use was stopped during encounter. If the section is blank, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.3",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants.narrative",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants.medicalDevicesAndImplants",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants.medicalDevicesAndImplants",
        "short" : "Medical devices and implants",
        "definition" : "Medical devices and implants",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy",
        "short" : "Pharmacotherapy section",
        "definition" : "Selected drug treatment during encounter. Medicinal products that were administered during encounter and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section. Medicinal products, the administration of which was started during encounter, but is also recommended after discharge, will be listed in the summary table in the recommendation section.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.5",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy.narrative",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy.pharmacotherapy",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy.pharmacotherapy",
        "short" : "Pharmacotherapy structured entry.",
        "definition" : "Pharmacotherapy structured entry.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults",
        "short" : "Significant Observation Results",
        "definition" : "Results of significant functional, diagnostic, and imaging examinations to ensure continuity of care, performed during encounter. Results of examinations ordered but not yet delivered should be presented separately from results already delivered.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.6",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults.narrative",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative subsection elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults.significantObservationResult[x]",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults.significantObservationResult[x]",
        "short" : "Significant Observation Result",
        "definition" : "Structured significant observation entry.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.synthesis",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.synthesis",
        "short" : "Synthesis",
        "definition" : "This section provides clinical synthesis (e.g. description of reasons and course of encounter) clustered by managed conditions, Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.7",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.synthesis.problemSynthesis",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.synthesis.problemSynthesis",
        "short" : "Summary description of the reason and course of hospitalisation for a specific problem.",
        "definition" : "Summary description of the reason and course of hospitalisation for a specific problem.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.synthesis.clinicalReasoning",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.synthesis.clinicalReasoning",
        "short" : "Clinical reasoning",
        "definition" : "The clinical summary can be concluded with a clinical consideration (diff. diagnosis, explanation of context, etc.) for clinically complex conditions.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails",
        "path" : "EHDSDischargeReport.body.dischargeDetails",
        "short" : "Discharge details",
        "definition" : "Structured information should be provided, however if not available, at least a section narrative should be present.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.narrative",
        "path" : "EHDSDischargeReport.body.dischargeDetails.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings",
        "short" : "Objective findings",
        "definition" : "Sub-section with objective findings.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.narrative",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.narrative",
        "short" : "Narrative content of the section.",
        "definition" : "Narrative content of the section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.anthropometricObservations",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.anthropometricObservations",
        "short" : "Anthropometric observations, such as body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.",
        "definition" : "Anthropometric observations, such as body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.1.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.vitalSigns",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.vitalSigns",
        "short" : "Vital signs observations. Mandatory: pulse rate, respiratory rate, systolic and diastolic blood pressure with site information; optional: 02 saturation",
        "definition" : "Vital signs observations. Mandatory: pulse rate, respiratory rate, systolic and diastolic blood pressure with site information; optional: 02 saturation",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.1.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.physicalExamination",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.physicalExamination",
        "short" : "Physical examination",
        "definition" : "Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.1.5",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus",
        "path" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus",
        "short" : "Section: Functional status",
        "definition" : "Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.For details see: https://paciowg.github.io/functional-status-ig/",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus.narrative",
        "path" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative, potentially formatted, content of the section",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus.functionalStatusAssessment",
        "path" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus.functionalStatusAssessment",
        "short" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "definition" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary",
        "path" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary",
        "short" : "Medication summary. Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued.",
        "definition" : "Medication summary. Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.8.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.narrative",
        "path" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.narrative",
        "short" : "Narrative content of the section.",
        "definition" : "Narrative content of the section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry",
        "path" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry",
        "short" : "Structured medication entry",
        "definition" : "Structured medication entry",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry.medicationUse",
        "path" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry.medicationUse",
        "short" : "Details about medication and dosaging",
        "definition" : "Details about medication and dosaging",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry.daysSupplied",
        "path" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry.daysSupplied",
        "short" : "Number of days for which the patient was provided with the drug at the time of discharge",
        "definition" : "Supply is intended to either hand over the medicine or write out a prescription. A 0 value indicates that the patient has not been provided with the drug (e.g. if the patient has a sufficient supply of the drug)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.carePlan",
        "path" : "EHDSDischargeReport.body.dischargeDetails.carePlan",
        "short" : "Care plan and other recommendations after discharge.",
        "definition" : "Care plan and other recommendations after discharge section.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.8.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.carePlan.narrative",
        "path" : "EHDSDischargeReport.body.dischargeDetails.carePlan.narrative",
        "short" : "Narrative content of the section.",
        "definition" : "Narrative content of the section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.carePlan.carePlan",
        "path" : "EHDSDischargeReport.body.dischargeDetails.carePlan.carePlan",
        "short" : "Structured care plan after discharge. Multiple care plans could be provided.",
        "definition" : "Structured care plan after discharge. Multiple care plans could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.carePlan.otherRecommendations",
        "path" : "EHDSDischargeReport.body.dischargeDetails.carePlan.otherRecommendations",
        "short" : "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc.",
        "definition" : "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.attachments[x]",
        "path" : "EHDSDischargeReport.attachments[x]",
        "short" : "Report attachments data elements",
        "definition" : "Report attachments data elements",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedia"
          }
        ]
      }
    ]
  }
}

```

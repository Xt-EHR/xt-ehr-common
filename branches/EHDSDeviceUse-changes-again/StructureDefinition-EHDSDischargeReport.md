# Discharge Report model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Discharge Report model**

## Logical Model: Discharge Report model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSDischargeReport |

 
A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs. 

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
  "date" : "2026-02-05T11:39:55+00:00",
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
  "description" : "A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs.",
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
        "definition" : "A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs."
      },
      {
        "id" : "EHDSDischargeReport.header.period",
        "path" : "EHDSDischargeReport.header.period",
        "short" : "Time of service that is being documented (typically the same as the time of encounter)"
      },
      {
        "id" : "EHDSDischargeReport.header.intendedRecipient[x]",
        "path" : "EHDSDischargeReport.header.intendedRecipient[x]",
        "short" : "Intended recipient(s) of the information, i.e. a person or organisation that should be notified or be aware of the content. This element is used to indicate explicit communication intent and does not represent routine storage or passive availability of information (e.g. in portals). Listing an intended recipient does not create an assignment or responsibility.",
        "definition" : "Intended recipient(s) of the information, i.e. a person or organisation that should be notified or be aware of the content. This element is used to indicate explicit communication intent and does not represent routine storage or passive availability of information (e.g. in portals). Listing an intended recipient does not create an assignment or responsibility.",
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
        "id" : "EHDSDischargeReport.body.alerts",
        "path" : "EHDSDischargeReport.body.alerts",
        "short" : "Section: Alerts.",
        "definition" : "Information about substantial alerts or warnings (including allergies) that health professionals should be aware of.",
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
        "id" : "EHDSDischargeReport.body.alerts.generatedNarrative",
        "path" : "EHDSDischargeReport.body.alerts.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
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
        "requirements" : "eHN Guideline HDR (v1.1): A.2.2.2, A.2.2.1",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert"
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
        "id" : "EHDSDischargeReport.body.encounterInformation.generatedNarrative",
        "path" : "EHDSDischargeReport.body.encounterInformation.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
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
        "id" : "EHDSDischargeReport.body.encounterInformation.note",
        "path" : "EHDSDischargeReport.body.encounterInformation.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation",
        "path" : "EHDSDischargeReport.body.admissionEvaluation",
        "short" : "Section: Admission evaluation. Admission evaluation section should be reported only if it is relevant to ensure continuity of care.",
        "definition" : "Section: Admission evaluation. Admission evaluation section should be reported only if it is relevant to ensure continuity of care.",
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
        "id" : "EHDSDischargeReport.body.admissionEvaluation.generatedNarrative",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
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
        "short" : "Objective findings, such as anthropometric measurements, vital signs, or objective anatomical findings of physical examination",
        "definition" : "Objective findings, such as anthropometric measurements, vital signs, or objective anatomical findings of physical examination",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1",
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
        "short" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "definition" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.note",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.note",
        "short" : "Free text notes by the evaluation performer",
        "definition" : "Free text notes by the evaluation performer",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory",
        "path" : "EHDSDischargeReport.body.patientHistory",
        "short" : "Section: Patient health history (anamnesis) containing only information that is highly relevant for this specific episode of care. The model is designed with the expectation that patient summary is available.",
        "definition" : "Section: Patient health history (anamnesis) containing only information that is highly relevant for this specific episode of care. The model is designed with the expectation that patient summary is available.",
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
        "id" : "EHDSDischargeReport.body.patientHistory.generatedNarrative",
        "path" : "EHDSDischargeReport.body.patientHistory.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section. In case the section includes structured information, it should also be included in generatedNarrative.",
        "definition" : "Narrative, potentially formatted, content of the whole section. In case the section includes structured information, it should also be included in generatedNarrative.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.note",
        "path" : "EHDSDischargeReport.body.patientHistory.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter",
        "path" : "EHDSDischargeReport.body.courseOfEncounter",
        "short" : "Course of inpatient or outpatient encounter.",
        "definition" : "Course of inpatient or outpatient encounter.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.generatedNarrative",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
        "short" : "Problems that were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the encounter. At least one treated problem should be marked. Other problems are recorded only if they are important for continuity of care (after discharge).",
        "definition" : "Problems that were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the encounter. At least one treated problem should be marked. Other problems are recorded only if they are important for continuity of care (after discharge).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.procedures",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.procedures",
        "short" : "Procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. Diagnostic procedures are typically captured as observation results and not repeated here.",
        "definition" : "Procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. Diagnostic procedures are typically captured as observation results and not repeated here.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.2",
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
        "short" : "Medical devices (including implants) whose use was started, stopped, or otherwise modified during the encounter.",
        "definition" : "Medical devices (including implants) whose use was started, stopped, or otherwise modified during the encounter.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.3",
        "min" : 0,
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
        "short" : "Significant medication treatments during encounter. The content of this section may be repeated in the medication summary for full overview of patient's medications.",
        "definition" : "Significant medication treatments during encounter. The content of this section may be repeated in the medication summary for full overview of patient's medications.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.5",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.testResults[x]",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.testResults[x]",
        "short" : "Significant medical test results of functional, diagnostic (including laboratory), and imaging examinations performed during encounter. This may include orders for which the results have not yet arrived.",
        "definition" : "Significant medical test results of functional, diagnostic (including laboratory), and imaging examinations performed during encounter. This may include orders for which the results have not yet arrived.",
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
        "id" : "EHDSDischargeReport.body.courseOfEncounter.note",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
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
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.generatedNarrative",
        "path" : "EHDSDischargeReport.body.dischargeDetails.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
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
        "short" : "Objective findings, such as anthropometric measurements, vital signs, or objective anatomical findings of physical examination",
        "definition" : "Objective findings, such as anthropometric measurements, vital signs, or objective anatomical findings of physical examination",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.1",
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
        "short" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "definition" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.7.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.note",
        "path" : "EHDSDischargeReport.body.dischargeDetails.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.medicationSummary",
        "path" : "EHDSDischargeReport.body.medicationSummary",
        "short" : "Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued.",
        "definition" : "Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued.",
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
        "id" : "EHDSDischargeReport.body.medicationSummary.generatedNarrative",
        "path" : "EHDSDischargeReport.body.medicationSummary.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.medicationSummary.medicationUse",
        "path" : "EHDSDischargeReport.body.medicationSummary.medicationUse",
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
        "id" : "EHDSDischargeReport.body.medicationSummary.note",
        "path" : "EHDSDischargeReport.body.medicationSummary.note",
        "short" : "Free text notes by the health professional",
        "definition" : "Free text notes by the health professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.carePlan",
        "path" : "EHDSDischargeReport.body.carePlan",
        "short" : "Care plan and other recommendations after discharge.",
        "definition" : "Care plan and other recommendations after discharge.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.8.2 (A.2.9.2)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.carePlan.generatedNarrative",
        "path" : "EHDSDischargeReport.body.carePlan.generatedNarrative",
        "short" : "Narrative, potentially formatted, content of the whole section.",
        "definition" : "Narrative, potentially formatted, content of the whole section.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.carePlan.carePlan",
        "path" : "EHDSDischargeReport.body.carePlan.carePlan",
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
        "id" : "EHDSDischargeReport.body.carePlan.otherRecommendations",
        "path" : "EHDSDischargeReport.body.carePlan.otherRecommendations",
        "short" : "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc.",
        "definition" : "Other recommendations (advice) after discharge. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.8.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.synthesis",
        "path" : "EHDSDischargeReport.body.synthesis",
        "short" : "Clinical synthesis (e.g. description of reasons and course of encounter) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions.",
        "definition" : "Clinical synthesis (e.g. description of reasons and course of encounter) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.7",
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

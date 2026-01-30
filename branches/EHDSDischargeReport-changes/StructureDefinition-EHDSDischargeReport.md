# Discharge Report model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Discharge Report model**

## Logical Model: Discharge Report model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport | *Version*:0.2.1 |
| Draft as of 2026-01-22 | *Computable Name*:EHDSDischargeReport |

 
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
  "date" : "2026-01-22T22:25:36+00:00",
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
        "short" : "Section: Patient health history (anamnesis) containing only information that is highly relevant for this specific episode of care.",
        "definition" : "Section: Patient health history (anamnesis) containing only information that is highly relevant for this specific episode of care.",
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
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
        "short" : "All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.",
        "definition" : "All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.",
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
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantProcedures",
        "short" : "Significant procedures - procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. This section does not include purely diagnostic procedures (MRI, CT, etc.).",
        "definition" : "Significant procedures - procedures performed during encounter which are significant for continuity of care, e.g. surgeries and other instrumental interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. This section does not include purely diagnostic procedures (MRI, CT, etc.).",
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
        "short" : "Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or which use was stopped during encounter.",
        "definition" : "Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or which use was stopped during encounter.",
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
        "short" : "Selected drug treatment during encounter. Medicinal products that were administered during encounter and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) should be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section. Medicinal products, the administration of which was started during encounter, but is also recommended after discharge, will be listed in medication summary.",
        "definition" : "Selected drug treatment during encounter. Medicinal products that were administered during encounter and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) should be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section. Medicinal products, the administration of which was started during encounter, but is also recommended after discharge, will be listed in medication summary.",
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
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults[x]",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults[x]",
        "short" : "Results of significant functional, diagnostic (including laboratory results), and imaging examinations to ensure continuity of care, performed during encounter. Results of examinations ordered but not yet delivered should be presented separately from results already delivered.",
        "definition" : "Results of significant functional, diagnostic (including laboratory results), and imaging examinations to ensure continuity of care, performed during encounter. Results of examinations ordered but not yet delivered should be presented separately from results already delivered.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.6",
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
        "short" : "Medication summary. Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued.",
        "definition" : "Medication summary. Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.8.1",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.medicationSummary.narrative",
        "path" : "EHDSDischargeReport.body.medicationSummary.narrative",
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
        "id" : "EHDSDischargeReport.body.carePlan.narrative",
        "path" : "EHDSDischargeReport.body.carePlan.narrative",
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

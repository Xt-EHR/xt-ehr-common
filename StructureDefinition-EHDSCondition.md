# Condition model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition model**

## Logical Model: Condition model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition | *Version*:0.2.1 |
| Draft as of 2025-10-10 | *Computable Name*:EHDSCondition |

 
EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. 

**Usages:**

* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md)...Show 7 more,[Imaging report model](StructureDefinition-EHDSImagingReport.md),[Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md),[Medication administration model](StructureDefinition-EHDSMedicationAdministration.md),[Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md),[Patient summary model](StructureDefinition-EHDSPatientSummary.md),[Procedure model](StructureDefinition-EHDSProcedure.md)and[Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSCondition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSCondition.csv), [Excel](StructureDefinition-EHDSCondition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSCondition",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition",
  "version" : "0.2.1",
  "name" : "EHDSCondition",
  "title" : "Condition model",
  "status" : "draft",
  "date" : "2025-10-10T16:36:16+00:00",
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
  "description" : "EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSCondition",
        "path" : "EHDSCondition",
        "short" : "Condition model",
        "definition" : "EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
      },
      {
        "id" : "EHDSCondition.problem",
        "path" : "EHDSCondition.problem",
        "short" : "Code identifying the condition, problem or diagnosis",
        "definition" : "Code identifying the condition, problem or diagnosis",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.2; PS (v3.4) A.2.2.2.1, A.2.3.1.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, ICD-O, Orphacode if rare disease is diagnosed"
        }
      },
      {
        "id" : "EHDSCondition.onsetDate",
        "path" : "EHDSCondition.onsetDate",
        "short" : "Onset date of a problem/condition",
        "definition" : "Onset date of a problem/condition",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.3; PS (v3.4) A.2.2.2.2, A.2.3.1.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSCondition.endDate",
        "path" : "EHDSCondition.endDate",
        "short" : "The date or estimated date that the condition resolved or went into remission",
        "definition" : "The date or estimated date that the condition resolved or went into remission",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.4; PS (v3.4) A.2.2.2.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSCondition.category",
        "path" : "EHDSCondition.category",
        "short" : "Category or categories of the problem (e.g. POA - present on admission, HAC - hospital aquired condition, and other categorisations).",
        "definition" : "Category or categories of the problem (e.g. POA - present on admission, HAC - hospital aquired condition, and other categorisations).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.5",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSCondition.problemStatus",
        "path" : "EHDSCondition.problemStatus",
        "short" : "Status of the condition/problem (active, resolved, inactive, ...)",
        "definition" : "Status of the condition/problem (active, resolved, inactive, ...)",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.7; PS (v3.4) A.2.2.2.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Condition Clinical Status Codes"
        }
      },
      {
        "id" : "EHDSCondition.resolutionCircumstances",
        "path" : "EHDSCondition.resolutionCircumstances",
        "short" : "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.).",
        "definition" : "This field includes free text if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem \"hepatic cyst\" and will be included in surgical procedures).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.8; PS (v3.4) A.2.2.2.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSCondition.severity",
        "path" : "EHDSCondition.severity",
        "short" : "A subjective assessment of the severity of the condition as evaluated by the clinician.",
        "definition" : "A subjective assessment of the severity of the condition as evaluated by the clinician.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.9",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Condition/Diagnosis Severity; SNOMED CT"
        }
      },
      {
        "id" : "EHDSCondition.anatomicLocation",
        "path" : "EHDSCondition.anatomicLocation",
        "short" : "The anatomical location including laterality where this condition manifests itself.",
        "definition" : "The anatomical location including laterality where this condition manifests itself.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSCondition.stage",
        "path" : "EHDSCondition.stage",
        "short" : "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used.",
        "definition" : "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.10",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …"
        }
      },
      {
        "id" : "EHDSCondition.diagnosisAssertionStatus",
        "path" : "EHDSCondition.diagnosisAssertionStatus",
        "short" : "Assertion about the certainty associated with a diagnosis. Diagnostic and/or clinical evidence of condition.",
        "definition" : "Assertion about the certainty associated with a diagnosis. Diagnostic and/or clinical evidence of condition.",
        "requirements" : "eHN Guideline PS (v3.4) A.2.3.1.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Condition Verification Status"
        }
      },
      {
        "id" : "EHDSCondition.asserter",
        "path" : "EHDSCondition.asserter",
        "short" : "The asserter of the condition",
        "definition" : "The asserter of the condition",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSCondition.assertedDate",
        "path" : "EHDSCondition.assertedDate",
        "short" : "Date and time of the diagnosis assertion",
        "definition" : "Date and time of the diagnosis assertion",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSCondition.specialistContact",
        "path" : "EHDSCondition.specialistContact",
        "short" : "Health Professional who may be specifically related to the problem, as a preferred contact.",
        "definition" : "Health Professional who may be specifically related to the problem, as a preferred contact.",
        "requirements" : "ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSCondition.externalResource",
        "path" : "EHDSCondition.externalResource",
        "short" : "External Resource which may be specifically related to the problem, for example a link between a rare disease problem and the corresponding guidelines.",
        "definition" : "External Resource which may be specifically related to the problem, for example a link between a rare disease problem and the corresponding guidelines.",
        "requirements" : "MyHealth@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      }
    ]
  }
}

```

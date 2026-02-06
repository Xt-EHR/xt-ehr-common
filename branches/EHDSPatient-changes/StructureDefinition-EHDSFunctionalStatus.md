# Functional status - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Functional status**

## Logical Model: Functional status 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSFunctionalStatus |

 
EHDS refined base model for Functional status 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSFunctionalStatus)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSFunctionalStatus.csv), [Excel](StructureDefinition-EHDSFunctionalStatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSFunctionalStatus",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus",
  "version" : "0.2.1",
  "name" : "EHDSFunctionalStatus",
  "title" : "Functional status",
  "status" : "draft",
  "date" : "2026-02-05T19:45:54+00:00",
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
  "description" : "EHDS refined base model for Functional status",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSFunctionalStatus",
        "path" : "EHDSFunctionalStatus",
        "short" : "Functional status",
        "definition" : "EHDS refined base model for Functional status"
      },
      {
        "id" : "EHDSFunctionalStatus.description",
        "path" : "EHDSFunctionalStatus.description",
        "short" : "Narrative description of the functional status",
        "definition" : "Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments.",
        "requirements" : "eHN HDR Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.relatedConditions",
        "path" : "EHDSFunctionalStatus.relatedConditions",
        "short" : "Conditions related to the functional status",
        "definition" : "Conditions related to the functional status",
        "comment" : "Disability in IPS",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.relatedConditions.condition",
        "path" : "EHDSFunctionalStatus.relatedConditions.condition",
        "short" : "Condition related to the functional status",
        "definition" : "Condition related to the functional status",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.relatedConditions.conditionText",
        "path" : "EHDSFunctionalStatus.relatedConditions.conditionText",
        "short" : "Textual description of the condition",
        "definition" : "Textual description of the condition",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.relatedConditions.onsetDate",
        "path" : "EHDSFunctionalStatus.relatedConditions.onsetDate",
        "short" : "Onset date of a condition",
        "definition" : "Onset date of a condition",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.functionalStatusAssessment",
        "path" : "EHDSFunctionalStatus.functionalStatusAssessment",
        "short" : "Functional assessment of the patient",
        "definition" : "Functional status assessment of the patient according to a specific assessment scheme.",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentDescription",
        "path" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentDescription",
        "short" : "Description of the functional assessment",
        "definition" : "Description of the functional assessment",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentCode",
        "path" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentCode",
        "short" : "Standardized code corresponding to the Functional assessment",
        "definition" : "Standardized code corresponding to the Functional assessment",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICF, SNOMED CT"
        }
      },
      {
        "id" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentDateTime",
        "path" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentDateTime",
        "short" : "Date and time of the functional assessment",
        "definition" : "Date and time of the functional assessment",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentResult[x]",
        "path" : "EHDSFunctionalStatus.functionalStatusAssessment.functionalAssessmentResult[x]",
        "short" : "Functional assessment result value",
        "definition" : "Functional assessment result value",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICF, SNOMED CT"
        }
      }
    ]
  }
}

```

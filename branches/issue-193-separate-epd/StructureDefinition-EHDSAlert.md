# Alert model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alert model**

## Logical Model: Alert model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert | *Version*:0.2.1 |
| Draft as of 2025-12-08 | *Computable Name*:EHDSAlert |

 
Alert flag 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAlert)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAlert.csv), [Excel](StructureDefinition-EHDSAlert.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAlert",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert",
  "version" : "0.2.1",
  "name" : "EHDSAlert",
  "title" : "Alert model",
  "status" : "draft",
  "date" : "2025-12-08T12:22:43+00:00",
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
  "description" : "Alert flag",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAlert",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAlert",
        "path" : "EHDSAlert",
        "short" : "Alert model",
        "definition" : "Alert flag"
      },
      {
        "id" : "EHDSAlert.text",
        "path" : "EHDSAlert.text",
        "short" : "Text",
        "definition" : "A human-readable narrative that contains a summary of the flag and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it \\\"clinically safe\\\" for a human to just read the narrative.\nExample 1: intolerance to aspirin due to gastrointestinal bleeding.\nExample 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)\nExample 3: the patient has a rare disease that requires special treatment\nExample 4: Airway Alert / Difficult Intubation\nExample 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.\nExample 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.\nExample 7: participation in a clinical trial that has to be taken into account in a healthcare contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAlert.priority",
        "path" : "EHDSAlert.priority",
        "short" : "Priority",
        "definition" : "A code that identifies the priority of the alert.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:Flag-priority-code"
        }
      },
      {
        "id" : "EHDSAlert.status",
        "path" : "EHDSAlert.status",
        "short" : "Status",
        "definition" : "Current status of the flag, Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:Flag-status"
        }
      },
      {
        "id" : "EHDSAlert.code",
        "path" : "EHDSAlert.code",
        "short" : "Code",
        "definition" : "A coded or textual representation of the flag.",
        "min" : 1,
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
        "id" : "EHDSAlert.period",
        "path" : "EHDSAlert.period",
        "short" : "Period",
        "definition" : "Time period when flag is active. The period of time from the activation of the flag to inactivation of the flag. If the flag is active, the end of the period should be unspecified.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      }
    ]
  }
}

```

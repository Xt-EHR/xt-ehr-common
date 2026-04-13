# Laboratory observation model - EHDS Logical Information Models v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratory observation model**

## Logical Model: Laboratory observation model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryObservation | *Version*:0.2.0 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSLaboratoryObservation |

 
EHDS refined base model for Observation performed by laboratory 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Observation model](StructureDefinition-EHDSObservation.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/eu.ehds.models|current/StructureDefinition/EHDSLaboratoryObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSLaboratoryObservation.csv), [Excel](StructureDefinition-EHDSLaboratoryObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSLaboratoryObservation",
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
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryObservation",
  "version" : "0.2.0",
  "name" : "EHDSLaboratoryObservation",
  "title" : "Laboratory observation model",
  "status" : "draft",
  "date" : "2026-01-23T07:00:19+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://Xt-EHR.eu"
        }
      ]
    }
  ],
  "description" : "EHDS refined base model for Observation performed by laboratory",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryObservation",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSLaboratoryObservation",
        "path" : "EHDSLaboratoryObservation",
        "short" : "Laboratory observation model",
        "definition" : "EHDS refined base model for Observation performed by laboratory"
      },
      {
        "id" : "EHDSLaboratoryObservation.code",
        "path" : "EHDSLaboratoryObservation.code",
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, NPU"
        }
      },
      {
        "id" : "EHDSLaboratoryObservation.testKit",
        "path" : "EHDSLaboratoryObservation.testKit",
        "short" : "Laboratory test kit used during measurement.",
        "definition" : "Laboratory test kit used during measurement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.calibrator",
        "path" : "EHDSLaboratoryObservation.calibrator",
        "short" : "Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain.",
        "definition" : "Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.accreditationStatus",
        "path" : "EHDSLaboratoryObservation.accreditationStatus",
        "short" : "Accreditation status of the laboratory for the observation.",
        "definition" : "Accreditation status of the laboratory for the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.previousResults",
        "path" : "EHDSLaboratoryObservation.previousResults",
        "short" : "Previous results of the same observation",
        "definition" : "Previous results of the same observation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryObservation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.pointOfCareTest",
        "path" : "EHDSLaboratoryObservation.pointOfCareTest",
        "short" : "Examination performed near or at the site of a patient.",
        "definition" : "Indicates if the observation is a point-of-care test (POCT), i.e. an examination performed near or at the site of a patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```

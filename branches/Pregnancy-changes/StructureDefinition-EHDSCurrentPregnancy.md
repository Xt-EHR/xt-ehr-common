# Current pregnancy status model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Current pregnancy status model**

## Logical Model: Current pregnancy status model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy | *Version*:0.2.1 |
| Draft as of 2026-02-02 | *Computable Name*:EHDSCurrentPregnancy |

 
Current pregnancy status 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSCurrentPregnancy)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSCurrentPregnancy.csv), [Excel](StructureDefinition-EHDSCurrentPregnancy.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSCurrentPregnancy",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy",
  "version" : "0.2.1",
  "name" : "EHDSCurrentPregnancy",
  "title" : "Current pregnancy status model",
  "status" : "draft",
  "date" : "2026-02-02T09:08:36+00:00",
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
  "description" : "Current pregnancy status",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSCurrentPregnancy",
        "path" : "EHDSCurrentPregnancy",
        "short" : "Current pregnancy status model",
        "definition" : "Current pregnancy status"
      },
      {
        "id" : "EHDSCurrentPregnancy.narrative",
        "path" : "EHDSCurrentPregnancy.narrative",
        "short" : "Textual description of current pregnancy status",
        "definition" : "Narrative description describing the status of the current pregnancy.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSCurrentPregnancy.currentPregnancyStatus",
        "path" : "EHDSCurrentPregnancy.currentPregnancyStatus",
        "short" : "Pregnancy status of the patient, e.g. pregnant, not pregnant, possible pregnancy",
        "definition" : "Pregnancy status of the patient, e.g. pregnant, not pregnant, possible pregnancy",
        "requirements" : "eHN PS Guideline, ISO IPS",
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
        "id" : "EHDSCurrentPregnancy.dateOfStatus",
        "path" : "EHDSCurrentPregnancy.dateOfStatus",
        "short" : "Effective date of the current pregnancy status.",
        "definition" : "Effective date of the current pregnancy status.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSCurrentPregnancy.expectedDateOfDelivery",
        "path" : "EHDSCurrentPregnancy.expectedDateOfDelivery",
        "short" : "Date in which the woman is due to give birth. Year, day and month are required.",
        "definition" : "Date in which the woman is due to give birth. Year, day and month are required.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EHDSCurrentPregnancy.gestationalAge",
        "path" : "EHDSCurrentPregnancy.gestationalAge",
        "short" : "Duration of the pregnancy at this day",
        "definition" : "Gestational age - duration of the pregnancy on the day on which the patient was asked or at the delivery. The duration can be given in weeks and/or days.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```

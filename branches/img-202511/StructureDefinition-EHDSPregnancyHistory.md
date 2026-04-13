# Pregnancy history model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy history model**

## Logical Model: Pregnancy history model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory | *Version*:0.2.1 |
| Draft as of 2025-11-27 | *Computable Name*:EHDSPregnancyHistory |

 
Pregnancy history for one pregnancy 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPregnancyHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPregnancyHistory.csv), [Excel](StructureDefinition-EHDSPregnancyHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPregnancyHistory",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory",
  "version" : "0.2.1",
  "name" : "EHDSPregnancyHistory",
  "title" : "Pregnancy history model",
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
  "description" : "Pregnancy history for one pregnancy",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPregnancyHistory",
        "path" : "EHDSPregnancyHistory",
        "short" : "Pregnancy history model",
        "definition" : "Pregnancy history for one pregnancy"
      },
      {
        "id" : "EHDSPregnancyHistory.narrative",
        "path" : "EHDSPregnancyHistory.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative description describing the outcome of any previous pregnancies. ",
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
        "id" : "EHDSPregnancyHistory.outcomeDate",
        "path" : "EHDSPregnancyHistory.outcomeDate",
        "short" : "Outcome date",
        "definition" : "Date referred to the previous pregnancies outcome.",
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
        "id" : "EHDSPregnancyHistory.outcome",
        "path" : "EHDSPregnancyHistory.outcome",
        "short" : "Outcome",
        "definition" : "Outcome of the previous pregnancy.",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.62 eHDSIOutcomeOfPregnancy (SNOMED CT, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.63 eHDSIRareDisease (OrphaCodes, used in MH@EU); ICD-11; SNOMED CT"
        }
      },
      {
        "id" : "EHDSPregnancyHistory.numberOfChildren",
        "path" : "EHDSPregnancyHistory.numberOfChildren",
        "short" : "Number of children/fetuses in this specific pregnancy",
        "definition" : "Number of children/fetuses in this specific pregnancy",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```

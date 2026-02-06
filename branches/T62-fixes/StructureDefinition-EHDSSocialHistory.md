# Social history model - EHDS Logical Information Models v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Social history model**

## Logical Model: Social history model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSSocialHistory | *Version*:0.2.0 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSSocialHistory |

 
EHDS model for social history observations 

**Usages:**

* Use this Logical Model: [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/eu.ehds.models|current/StructureDefinition/EHDSSocialHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSSocialHistory.csv), [Excel](StructureDefinition-EHDSSocialHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSSocialHistory",
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
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSSocialHistory",
  "version" : "0.2.0",
  "name" : "EHDSSocialHistory",
  "title" : "Social history model",
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
  "description" : "EHDS model for social history observations",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSSocialHistory",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSSocialHistory",
        "path" : "EHDSSocialHistory",
        "short" : "Social history model",
        "definition" : "EHDS model for social history observations"
      },
      {
        "id" : "EHDSSocialHistory.description",
        "path" : "EHDSSocialHistory.description",
        "short" : "Textual description of the social history.",
        "definition" : "Textual description of the social history.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSSocialHistory.observation",
        "path" : "EHDSSocialHistory.observation",
        "short" : "Social history observations related to health",
        "definition" : "Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSSocialHistory.referencePeriod",
        "path" : "EHDSSocialHistory.referencePeriod",
        "short" : "Reference date range",
        "definition" : "Example: from 1974 to 2004",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
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

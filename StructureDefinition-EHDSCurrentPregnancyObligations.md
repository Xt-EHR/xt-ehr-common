# Current pregnancy obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Current pregnancy obligations**

## Logical Model: Current pregnancy obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancyObligations | *Version*:0.4.0 |
| Draft as of 2026-03-13 | *Computable Name*:EHDSCurrentPregnancyObligations |

 
Obligations for the logical model for current pregnancy. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSCurrentPregnancyObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSCurrentPregnancyObligations.csv), [Excel](StructureDefinition-EHDSCurrentPregnancyObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSCurrentPregnancyObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancyObligations",
  "version" : "0.4.0",
  "name" : "EHDSCurrentPregnancyObligations",
  "title" : "Current pregnancy obligations",
  "status" : "draft",
  "date" : "2026-03-13T07:56:32+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for current pregnancy.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancyObligations",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSCurrentPregnancyObligations",
      "path" : "EHDSCurrentPregnancyObligations",
      "short" : "Current pregnancy obligations",
      "definition" : "Obligations for the logical model for current pregnancy."
    },
    {
      "id" : "EHDSCurrentPregnancyObligations.header",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSCurrentPregnancyObligations.header"
    },
    {
      "id" : "EHDSCurrentPregnancyObligations.header.subject",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSCurrentPregnancyObligations.header.subject"
    },
    {
      "id" : "EHDSCurrentPregnancyObligations.header.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSCurrentPregnancyObligations.header.status"
    },
    {
      "id" : "EHDSCurrentPregnancyObligations.currentPregnancyStatus",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSCurrentPregnancyObligations.currentPregnancyStatus"
    },
    {
      "id" : "EHDSCurrentPregnancyObligations.dateOfStatus",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSCurrentPregnancyObligations.dateOfStatus"
    },
    {
      "id" : "EHDSCurrentPregnancyObligations.expectedDateOfDelivery",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSCurrentPregnancyObligations.expectedDateOfDelivery"
    }]
  }
}

```

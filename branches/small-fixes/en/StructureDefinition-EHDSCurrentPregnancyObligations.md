# Current pregnancy obligations - EHDS Logical Information Models v0.4.0

## Logical Model: Current pregnancy obligations 

 
Obligations for the logical model for current pregnancy. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSCurrentPregnancyObligations)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSCurrentPregnancyObligations.csv), [Excel](../StructureDefinition-EHDSCurrentPregnancyObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSCurrentPregnancyObligations",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancyObligations",
  "version" : "0.4.0",
  "name" : "EHDSCurrentPregnancyObligations",
  "title" : "Current pregnancy obligations",
  "status" : "draft",
  "date" : "2026-03-18T20:05:29+00:00",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSCurrentPregnancy",
      "path" : "EHDSCurrentPregnancy"
    },
    {
      "id" : "EHDSCurrentPregnancy.header",
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
      "path" : "EHDSCurrentPregnancy.header"
    },
    {
      "id" : "EHDSCurrentPregnancy.header.subject",
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
      "path" : "EHDSCurrentPregnancy.header.subject"
    },
    {
      "id" : "EHDSCurrentPregnancy.header.status",
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
      "path" : "EHDSCurrentPregnancy.header.status"
    },
    {
      "id" : "EHDSCurrentPregnancy.currentPregnancyStatus",
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
      "path" : "EHDSCurrentPregnancy.currentPregnancyStatus"
    },
    {
      "id" : "EHDSCurrentPregnancy.dateOfStatus",
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
      "path" : "EHDSCurrentPregnancy.dateOfStatus"
    },
    {
      "id" : "EHDSCurrentPregnancy.expectedDateOfDelivery",
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
      "path" : "EHDSCurrentPregnancy.expectedDateOfDelivery"
    }]
  }
}

```

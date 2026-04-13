# AllergyIntolerance obligations - EHDS Logical Information Models v1.0.0

## Logical Model: AllergyIntolerance obligations 

 
Obligations for the logical model for allergy intolerance. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAllergyIntoleranceObligations)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSAllergyIntoleranceObligations.csv), [Excel](../StructureDefinition-EHDSAllergyIntoleranceObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAllergyIntoleranceObligations",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntoleranceObligations",
  "version" : "1.0.0",
  "name" : "EHDSAllergyIntoleranceObligations",
  "title" : "AllergyIntolerance obligations",
  "status" : "active",
  "date" : "2026-04-02T12:48:10+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for allergy intolerance.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSAllergyIntolerance",
      "path" : "EHDSAllergyIntolerance"
    },
    {
      "id" : "EHDSAllergyIntolerance.header.subject",
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
      "path" : "EHDSAllergyIntolerance.header.subject"
    },
    {
      "id" : "EHDSAllergyIntolerance.header.identifier",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSAllergyIntolerance.header.identifier"
    },
    {
      "id" : "EHDSAllergyIntolerance.header.date",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSAllergyIntolerance.header.date"
    },
    {
      "id" : "EHDSAllergyIntolerance.header.status",
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
      "path" : "EHDSAllergyIntolerance.header.status"
    },
    {
      "id" : "EHDSAllergyIntolerance.agentOrAllergen",
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
      "path" : "EHDSAllergyIntolerance.agentOrAllergen"
    },
    {
      "id" : "EHDSAllergyIntolerance.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSAllergyIntolerance.note"
    },
    {
      "id" : "EHDSAllergyIntolerance.criticality",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSAllergyIntolerance.criticality"
    },
    {
      "id" : "EHDSAllergyIntolerance.reaction.manifestation",
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
      "path" : "EHDSAllergyIntolerance.reaction.manifestation"
    },
    {
      "id" : "EHDSAllergyIntolerance.reaction.onset",
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
      "path" : "EHDSAllergyIntolerance.reaction.onset"
    }]
  }
}

```

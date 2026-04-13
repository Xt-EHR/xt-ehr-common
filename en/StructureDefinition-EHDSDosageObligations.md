# Dosage obligations - EHDS Logical Information Models v1.0.0

## Logical Model: Dosage obligations 

 
Obligations for the logical model for dosage. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDosageObligations)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSDosageObligations.csv), [Excel](../StructureDefinition-EHDSDosageObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDosageObligations",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosageObligations",
  "version" : "1.0.0",
  "name" : "EHDSDosageObligations",
  "title" : "Dosage obligations",
  "status" : "active",
  "date" : "2026-04-09T11:17:25+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for dosage.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSDosage",
      "path" : "EHDSDosage"
    },
    {
      "id" : "EHDSDosage.renderedDosageInstruction",
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
      "path" : "EHDSDosage.renderedDosageInstruction"
    },
    {
      "id" : "EHDSDosage.dosageDetails.note",
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
      "path" : "EHDSDosage.dosageDetails.note"
    },
    {
      "id" : "EHDSDosage.dosageDetails.doseAndRate.dose[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "System SHALL support at least Quantity data type for the element. System SHOULD support Range data type for the element."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDosage.dosageDetails.doseAndRate.dose[x]"
    },
    {
      "id" : "EHDSDosage.dosageDetails.repeat",
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
      "path" : "EHDSDosage.dosageDetails.repeat"
    },
    {
      "id" : "EHDSDosage.dosageDetails.repeat.bounds[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "System SHALL support at least Quantity data type for the element."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDosage.dosageDetails.repeat.bounds[x]"
    },
    {
      "id" : "EHDSDosage.dosageDetails.repeat.frequency",
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
      "path" : "EHDSDosage.dosageDetails.repeat.frequency"
    },
    {
      "id" : "EHDSDosage.dosageDetails.repeat.frequency.numberOfTimes",
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
      "path" : "EHDSDosage.dosageDetails.repeat.frequency.numberOfTimes"
    },
    {
      "id" : "EHDSDosage.dosageDetails.repeat.frequency.period",
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
      "path" : "EHDSDosage.dosageDetails.repeat.frequency.period"
    },
    {
      "id" : "EHDSDosage.dosageDetails.routeOfAdministration",
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
      "path" : "EHDSDosage.dosageDetails.routeOfAdministration"
    }]
  }
}

```

# Medication dispense model obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication dispense model obligations**

## Logical Model: Medication dispense model obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispenseObligations | *Version*:0.4.0 |
| Draft as of 2026-02-26 | *Computable Name*:EHDSMedicationDispenseObligations |

 
Obligations for the logical model for medication dispense for dispensing/pharmacy systems. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationDispenseObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationDispenseObligations.csv), [Excel](StructureDefinition-EHDSMedicationDispenseObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationDispenseObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispenseObligations",
  "version" : "0.4.0",
  "name" : "EHDSMedicationDispenseObligations",
  "title" : "Medication dispense model obligations",
  "status" : "draft",
  "date" : "2026-02-26T12:59:13+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for medication dispense for dispensing/pharmacy systems.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispenseObligations",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSMedicationDispenseObligations",
      "path" : "EHDSMedicationDispenseObligations",
      "short" : "Medication dispense model obligations",
      "definition" : "Obligations for the logical model for medication dispense for dispensing/pharmacy systems."
    },
    {
      "id" : "EHDSMedicationDispenseObligations.header.subject",
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
      "path" : "EHDSMedicationDispenseObligations.header.subject"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.header.author[x]",
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
          "valueMarkdown" : "System SHALL support at least EHDSHealthProfessional data type for the element."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSMedicationDispenseObligations.header.author[x]"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.header.date",
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
      "path" : "EHDSMedicationDispenseObligations.header.date"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.header.status",
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
      "path" : "EHDSMedicationDispenseObligations.header.status"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.relatedRequest",
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
      "path" : "EHDSMedicationDispenseObligations.relatedRequest"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.medication",
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
      "path" : "EHDSMedicationDispenseObligations.medication"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.dispensedQuantity",
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
      "path" : "EHDSMedicationDispenseObligations.dispensedQuantity"
    },
    {
      "id" : "EHDSMedicationDispenseObligations.dosageInstructions",
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
      "path" : "EHDSMedicationDispenseObligations.dosageInstructions"
    }]
  }
}

```

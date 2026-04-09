# Prescribing system medication model obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prescribing system medication model obligations**

## Logical Model: Prescribing system medication model obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPrescribingSystemMedicationObligations | *Version*:0.4.0 |
| Draft as of 2026-02-19 | *Computable Name*:EHDSPrescribingSystemMedicationObligations |

 
Obligations for the logical model for medication for prescribing systems. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPrescribingSystemMedicationObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPrescribingSystemMedicationObligations.csv), [Excel](StructureDefinition-EHDSPrescribingSystemMedicationObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPrescribingSystemMedicationObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPrescribingSystemMedicationObligations",
  "version" : "0.4.0",
  "name" : "EHDSPrescribingSystemMedicationObligations",
  "title" : "Prescribing system medication  model obligations",
  "status" : "draft",
  "date" : "2026-02-19T22:11:14+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for medication for prescribing systems.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSMedication",
      "path" : "EHDSMedication"
    },
    {
      "id" : "EHDSMedication.identifyingCode[x]",
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
      "path" : "EHDSMedication.identifyingCode[x]"
    },
    {
      "id" : "EHDSMedication.productName",
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
      "path" : "EHDSMedication.productName"
    }]
  }
}

```
